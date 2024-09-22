// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract SpaceToken is ERC20, Ownable, ERC20Burnable 
{

    constructor() ERC20("Galactic Coin", "GC") Ownable(msg.sender) 
    {
        addPlanet(1, "Mars", 100);
        addPlanet(2, "Venus", 150);
    }

    // Mint new tokens
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Burn tokens from the caller's account
    function burn(uint256 amount) public override {
        super.burn(amount);
    }

    // Transfer tokens from the caller to a specified address
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        return super.transfer(recipient, amount);
    }

    // Transfer tokens from a specified address to another specified address (only owner)
    function transferFrom(address sender, address recipient, uint256 amount) public override returns (bool) {
        return super.transferFrom(sender, recipient, amount);
    }

    struct Planet {
        string name;
        uint256 price;
    }
    
    // Mapping to store available planets
    mapping(uint256 => Planet) public availablePlanets;

    // Mapping to keep track of which planets a user has bought
    mapping(address => mapping(uint256 => bool)) public purchasedPlanets;

    // Event to log planet purchases
    event PlanetPurchased(address indexed user, uint256 planetId, string planetName);

    // Add a new planet
    function addPlanet(uint256 planetId, string memory name, uint256 price) public onlyOwner {
        availablePlanets[planetId] = Planet(name, price);
    }

    // Buy a planet
    function buyPlanet(uint256 planetId) public {
        Planet memory planet = availablePlanets[planetId];
        require(bytes(planet.name).length != 0, "Planet does not exist");
        require(!purchasedPlanets[msg.sender][planetId], "Planet already purchased");
        require(balanceOf(msg.sender) >= planet.price, "Insufficient balance");

        // Transfer tokens from the user to the contract
        _transfer(msg.sender, address(this), planet.price);

        // Mark the planet as purchased by the user
        purchasedPlanets[msg.sender][planetId] = true;

        // Emit the event
        emit PlanetPurchased(msg.sender, planetId, planet.name);
    }

    // Check if a user has purchased a planet
    function hasPurchasedPlanet(address user, uint256 planetId) public view returns (bool) {
        return purchasedPlanets[user][planetId];
    }
}

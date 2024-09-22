# SpaceToken

## Overview

SpaceToken is an ERC20 token smart contract built on the Ethereum blockchain, designed to facilitate a unique digital asset experience. Users can mint, burn, and transfer Galactic Coins (GC), as well as purchase virtual planets. This project serves as an engaging way to explore the concept of token ownership and trading in a fun, space-themed environment.

## Features

- **ERC20 Compliance**: Fully compliant with the ERC20 token standard, allowing for seamless integration with wallets and decentralized applications.
- **Minting**: The owner can mint new tokens to distribute to users as needed.
- **Burning**: Users can burn their tokens, effectively reducing the total supply.
- **Planet Purchases**: Users can purchase predefined virtual planets with their tokens.
- **Ownership Control**: Only the contract owner can mint new tokens and add new planets.

## Getting Started

### Prerequisites

To deploy and interact with the SpaceToken contract, ensure you have the following:

- [Node.js](https://nodejs.org/en/download/) installed
- [Truffle](https://www.trufflesuite.com/truffle) or [Hardhat](https://hardhat.org/) for development
- An Ethereum wallet (e.g., MetaMask) for testing on a testnet or mainnet
- Access to an Ethereum node (via Infura or Alchemy)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/Ragini009/spacetoken.git
   cd spacetoken
   ```

2. Install the necessary dependencies:

   ```bash
   npm install
   ```

3. Compile the smart contract:

   ```bash
   truffle compile
   ```

### Deployment

1. Configure your deployment settings in `truffle-config.js` or `hardhat.config.js`.

2. Deploy the contract:

   ```bash
   truffle migrate --network <your_network>
   ```

## Contract Functions

- **Minting Tokens**: The contract owner can mint new tokens.
  ```solidity
  function mint(address to, uint256 amount) public onlyOwner;
  ```

- **Burning Tokens**: Users can burn their tokens to decrease the total supply.
  ```solidity
  function burn(uint256 amount) public override;
  ```

- **Transfer Tokens**: Users can transfer tokens to other addresses.
  ```solidity
  function transfer(address recipient, uint256 amount) public override returns (bool);
  ```

- **Transfer Tokens From**: Allows the owner to transfer tokens from one address to another.
  ```solidity
  function transferFrom(address sender, address recipient, uint256 amount) public override returns (bool);
  ```

- **Add New Planet**: The contract owner can add new planets.
  ```solidity
  function addPlanet(uint256 planetId, string memory name, uint256 price) public onlyOwner;
  ```

- **Purchase Planet**: Users can buy planets with their tokens.
  ```solidity
  function buyPlanet(uint256 planetId) public;
  ```

- **Check Planet Ownership**: Users can check if they own a specific planet.
  ```solidity
  function hasPurchasedPlanet(address user, uint256 planetId) public view returns (bool);
  ```

## Events

- **PlanetPurchased**: This event is emitted when a user successfully purchases a planet.
  ```solidity
  event PlanetPurchased(address indexed user, uint256 planetId, string planetName);
  ```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [OpenZeppelin](https://openzeppelin.com/) for their extensive libraries that simplify smart contract development.
- The Ethereum community for ongoing support and resources.

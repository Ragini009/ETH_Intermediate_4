# Galactic Coin (GC)

## Overview

Galactic Coin (GC) is an ERC20 token built on the Ethereum blockchain. This contract not only facilitates the minting and burning of tokens but also allows users to purchase virtual planets with their tokens. It utilizes OpenZeppelin's standard libraries for robust security and functionality.

## Features

1. **ERC20 Token Implementation**: Standard ERC20 token functionalities such as transfer, approve, and allowance.
2. **Ownable**: Ownership control, allowing only the owner to perform specific tasks.
3. **Minting and Burning**: The owner can mint new tokens, and users can burn their tokens.
4. **Virtual Planet Purchase**: Users can buy virtual planets using their tokens.

## Installation

To use or extend the Galactic Coin contract, follow these steps:

1. Clone the repository.
2. Install the required dependencies using Node.js and npm.
3. Compile the contract using Hardhat.

## Usage

### Deployment

Deploy the contract using Hardhat by creating a deployment script and running it.

### Interacting with the Contract

You can interact with the contract using Hardhat, Ethers.js, or any Ethereum-compatible frontend.

- **Minting Tokens**: Allows the owner to mint new tokens.
- **Burning Tokens**: Users can burn their tokens.
- **Adding a Planet**: The owner can add new planets to the system.
- **Buying a Planet**: Users can buy planets if they have sufficient balance.

## Smart Contract Details

### Constructor

Initializes the contract with the name "Galactic Coin" and the symbol "GC". Sets the deployer as the owner.

### Mint Function

Allows the owner to mint new tokens.

### Planet Structure

Defines a structure to hold planet information.

### Planet Management

- **Add Planet**: Allows the owner to add new planets to the system.
- **Buy Planet**: Allows users to buy planets if they have sufficient balance.

## Events

### Planet Purchased Event

Emitted when a user purchases a planet.

## Testing

Run tests using Hardhat to ensure the contract functions correctly.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

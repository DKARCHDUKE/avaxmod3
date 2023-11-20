# Avalanche Token (AVAX)

## Overview
Avalanche Token (AVAX) is a simple ERC-20 token implemented in Solidity. This token is named "Avalanche" with the symbol "AVAX" and is based on the OpenZeppelin library for ERC-20 and Ownable functionalities.
## Usage
### Constructor
Upon deployment, the constructor initializes the token with the name "Avalanche" and the symbol "AVAX." Additionally, it mints 20 AVAX tokens to the deploying address.

### Minting
The `mint` function allows the owner to mint additional AVAX tokens and assign them to a specified address.


### Burning
The `burn` function allows any address to burn a specified amount of their AVAX tokens.


### Transfer
The `transfer` function overrides the ERC-20 `transfer` function to ensure proper access control.

## Acknowledgments
- [OpenZeppelin](https://openzeppelin.com/) for providing the ERC-20 and Ownable contracts.

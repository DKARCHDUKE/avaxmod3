// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts@4.9/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9/access/Ownable.sol";

contract micko is ERC20, Ownable {
    event Mint(address indexed to, uint256 amount);
    event Burn(address indexed from, uint256 amount);

    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
        emit Mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(_msgSender(), amount);
        emit Burn(_msgSender(), amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        require(to != address(this), "Cannot transfer to the token contract");
        _transfer(_msgSender(), to, amount);
        return true;
    }
}

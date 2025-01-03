
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title PurePassionToken
 * @dev BEP-20 token implementation for "Pure Passion" (PPAS).
 */
contract PurePassionToken is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20("Pure Passion", "PPAS") {
        _mint(msg.sender, initialSupply * (10 ** decimals()));
    }

    /**
     * @dev Mint new tokens. Can only be called by the owner.
     * @param to Address to receive the minted tokens.
     * @param amount Number of tokens to mint.
     */
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}

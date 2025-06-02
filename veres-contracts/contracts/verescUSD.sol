// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title VeresCUSD
 * @dev A mock cUSD token for the Veres Rounds system
 */
contract VeresCUSD is ERC20, Ownable {
    constructor() ERC20("VeresCUSD", "vCUSD") Ownable(msg.sender) {
        _mint(msg.sender, 1_000_000 * 10 ** decimals());
    }

    /**
     * @dev Function to mint tokens to a specific address (for testing)
     */
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}

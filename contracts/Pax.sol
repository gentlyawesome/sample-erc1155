// contracts/Pax.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Pax is ERC1155, Ownable {
    uint256 constant  Joe = 0;
    uint256 constant  Ben = 1;
    uint256 constant  Node = 2;
    uint256 constant  Zia = 3;

    constructor() ERC1155(""){
        _mint(msg.sender, Joe, 1, "");
    }

    function mint(uint256 amount) public onlyOwner {
        _mint(msg.sender, Joe, amount, "");
    }

}
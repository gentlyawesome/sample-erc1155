// contracts/Pax.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Pax is ERC1155, Ownable {
    uint256 constant Joe = 0;
    uint256 constant Ben = 1;
    uint256 constant Node = 2;
    uint256 constant Zia = 3;
    uint256 constant Zed = 4;

    constructor() ERC1155("https://gateway.pinata.cloud/ipfs/QmYs1pJrstd92evWgWyehxvK5csPGZjKUwUBmAd5EyVWUe/{id}.json") {
        _mint(msg.sender, Joe, 1, "");
        _mint(msg.sender, Ben, 1, "");
        _mint(msg.sender, Node, 1, "");
        _mint(msg.sender, Zia, 1, "");
        _mint(msg.sender, Zed, 1, "");
    }

    function mint(uint256 amount) public onlyOwner {
        _mint(msg.sender, Joe, amount, "");
        _mint(msg.sender, Ben, amount, "");
        _mint(msg.sender, Node, amount, "");
        _mint(msg.sender, Zia, amount, "");
        _mint(msg.sender, Zed, amount, "");
    }
}

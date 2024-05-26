// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ThemeStorage {
    mapping(address => string) private themeCIDs;

    function setThemeCID(string memory cid) public {
        themeCIDs[msg.sender] = cid;
    }

    function getThemeCID(address user) public view returns (string memory) {
        return themeCIDs[user];
    }
}

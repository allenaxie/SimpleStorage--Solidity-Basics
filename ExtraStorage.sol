// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

// Inherit all variables and functions from SimpleStorage
contract ExtraStorage is SimpleStorage {

    // child function - override
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
    
}
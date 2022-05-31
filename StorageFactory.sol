// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

// importing other contracts
import "./SimpleStorage.sol";

contract StorageFactory {
    // type - visibility - variable_name
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        // create new contract instance - assigning a new SimpleStorage contract to the variable simpleStorage
        SimpleStorage simpleStorage = new SimpleStorage();
        // add new instance to array
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // Address
        // ABI
        // assigning simeple storage object at dynamic index to variable
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}
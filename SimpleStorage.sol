// SPDX-License-Identifier: MIT

pragma solidity >=0.8.8 <0.9.0; // use version greater or equal to 0.8.8 and LESS than 0.9.0

contract SimpleStorage {

    uint256 public favoriteNumber;

    // mapping - object
    mapping(string => uint256) public nameToFavoriteNumber;

    // parent function - virtual
    function store(uint256 _favoriteNumber) public virtual{
        favoriteNumber = _favoriteNumber;
        retrieve(); // calling a view function here will cost gas
    }

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // People[] = dynamic array - length of array not defined
    // people is our array
    People[] public people;

    // view , pure functions don't modify the state of the blockchain
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    // calldata, memory, storage
    function addPerson (string memory _name, uint256 _favoriteNumber) public {
        // add new person to array of people
        people.push(People(_favoriteNumber, _name));
        // add name - favoriteNumber pair to our nameToFavoriteNumber object as a key-value pair
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}


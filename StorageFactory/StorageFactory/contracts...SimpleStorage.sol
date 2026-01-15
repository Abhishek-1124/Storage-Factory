// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    // FavoriteNumber gets initialized to 0 in no value is given
    uint256 myFavoriteNumber; // 0

    //uint256[] listOfFavoriteNumbers;
    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    
    // Person public pat = Person({favoriteNumber: 7, name: "Pat"});
    // Person public Abhi = Person({favoriteNumber: 5, name: "Abhi"});

    Person[] public listOfPeople;   // []

    // chelsea -> 232
    mapping(string => uint256) public nameToFavoriteNumber;
    

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    //view, pure
    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        Person memory newPerson = Person(_favoriteNumber, _name);
        listOfPeople.push(newPerson);
        nameToFavoriteNumber[_name] = _favoriteNumber;

    }
    
}
   

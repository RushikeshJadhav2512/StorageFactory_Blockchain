//SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

contract SimpleStorage{
    // boolean, uint, int, address, bytes
    // This gets initialized to zero
    uint256 public favoriteNumber ;
    //People public person = People({favoriteNumber: 2, name:"Rushikesh"});
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    //uint256[] public favouriteNumberList;
    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual  {
        favoriteNumber = _favoriteNumber;
       
    }
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
    
}
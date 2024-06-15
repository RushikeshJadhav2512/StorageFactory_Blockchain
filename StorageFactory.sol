//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public simplestorageArray;
    function createSimpleStorageContract() public {
        SimpleStorage simplestorage = new SimpleStorage();
        simplestorageArray.push(simplestorage);


    }
    
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        SimpleStorage simplestorage = simplestorageArray[_simpleStorageIndex];
        simplestorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return simplestorageArray[_simpleStorageIndex].retrieve();
    }
}
// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract SimpleStorage {
    uint256 favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public sayfavoriteNumber;

    function storeIt(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    function retrive() public view returns (uint256){
        return favoriteNumber;
    }
    function addGuys(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        sayfavoriteNumber[_name] = _favoriteNumber;
    }
} 
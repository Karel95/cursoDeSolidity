// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract arrays {
    uint[] public arr;
    uint[] public arr2 = [0,1,2,3];
    uint[8] public arrayFixedLength;

    function getArray() public view returns (uint[] memory) {
        return arr2;
    }

    function push(uint _i) public {
        arr2.push(_i);
    }

    function pop() public {
        arr2.pop();
    }

    function getLength() public view returns (uint) {
        return arr2.length;
    }

    function removeFromArray(uint _i) public {
        delete arr2[_i];
    }

    function createArray() public pure returns (uint[] memory) {
        uint[] memory arr3 = new uint[](3);
        return arr3;
    }
}


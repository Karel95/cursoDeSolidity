// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract viewAndPure {
    uint256 public x = 5;

    //view: (solo lee del estado de la blockchain)
    function functionView(uint256 y) public view returns(uint256) {
        return x + y;
    }

    //pure:
    function functionPure(uint256 _x, uint256 _y) public pure returns(uint256) {
        return _x + _y;
    }
}


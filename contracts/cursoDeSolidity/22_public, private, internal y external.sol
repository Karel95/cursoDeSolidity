// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract visibility {
//public, private e internal solo aplican para las variables.
    uint public x = 0;
    uint private y = 11;
    uint internal z = 22;

//Las cuatro (public, private, internal y external) aplican para las funciones. 
    function publicFunction() public pure returns (uint) {}

    function privateFunction() private pure returns (uint) {}
    
    function internalFunction() internal pure returns (uint) {}

    function externalFunction() external pure returns (uint) {}
}

contract visibilityChild is visibility {
    function myFunc() public pure returns(uint) {}
}

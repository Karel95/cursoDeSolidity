// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract functionsOutputs {
    function returnMany() public pure returns(uint256,bool,string memory,int) {
        return (1,true,"hola",10);
    }
    function returnWithName() public pure returns(uint256 x,bool y,int z) {
        return (2,false,20);
    }
    function returnWithValue() public pure returns(uint256 x,bool y,int z) {
        x = 3;
        y = false;
        z = 30;
    }

    //destructuring:
    function destructuring() public pure returns(uint256 x,bool y,string memory z,int a) {
        (x, y, z, a) = returnMany();
        return (x, y, z, a);
    }
}



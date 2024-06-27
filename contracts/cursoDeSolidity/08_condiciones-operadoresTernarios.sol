// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract conditions {
    function foo(uint _number) public pure returns(uint) {
        if(_number < 10){
            return 1;
        } else if(_number == 10){
            return 10;
        } else {
            return 100;
        }
    }

        function ternaryOperator(uint _number) public pure returns(uint) {
            return (_number < 10) ? 1 : 2;
            //Es _number menor que 10?
            //True? devuelve 1
            //False: devuelve 2
    }
}



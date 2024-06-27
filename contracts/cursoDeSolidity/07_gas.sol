// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract gas {
    uint public index = 0;
    function loopForever() public{
        while(true){
            index += 1;
        }
    }
}

//Las transacciones con bucles infinitos no se pueden ejecutar, exceden el gas limit.

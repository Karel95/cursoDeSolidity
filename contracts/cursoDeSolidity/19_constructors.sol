// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


//El constructor es una funcion que se ejecuta una sola vez cuando se despliega el contrato.
contract parentContract {
    uint public myParentNumber;

    constructor(uint _myNumber) {
        myParentNumber = _myNumber;
    }
}

contract constructors is parentContract(1) {
    uint public myNumber;

    constructor(uint _myNumber) /*parentContract(1)*/ {
        myNumber = _myNumber;
    }
}

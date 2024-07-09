// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


//cuando agregamos el "abstract" en el contrato, debe tener al menos una funcion "virtual".
abstract contract Abstract {

    //Funcion definida, pero no implementada:
    function foo() virtual external returns(uint) {}
}

contract myContract is Abstract {
    uint myNumber;

    function foo() override external returns (uint) {
        myNumber = 15;
        return myNumber;
    }
}

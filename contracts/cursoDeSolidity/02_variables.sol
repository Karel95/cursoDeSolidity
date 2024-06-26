// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract variables {
    //deEstado
    string public textoEjemplo = "Texto de ejemplo.";
    bool public active = true;

    uint timestamp;
    address sender;

    //locales
    constructor () {
        uint8 valor = 123;
        valor += 4;

        //globales
        timestamp = block.timestamp;
        sender = msg.sender;
    }
}



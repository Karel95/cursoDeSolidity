// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract FallbackVsReceive {
    event log(string funcName, address from, uint amount, bytes data);

    //Cuando una funcion no existe, se llama "fallback()".
    fallback() external payable {
        emit log("fallback", msg.sender, msg.value, msg.data);
    }

    receive() external payable {
        emit log("receive", msg.sender, msg.value, "");
    }
}

//Lo anterior es muy usado; por ejemplo, cuando algun usuario envia ether a nuestro contrato,
//y este no usa ether, podemos implementer algo para manejar ese ether.

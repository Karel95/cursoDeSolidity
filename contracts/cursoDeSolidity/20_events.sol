// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract events {
    event Transfer(uint indexed amount, address indexed to, address indexed from);
    //Se pueden usar hasta tres "indexed" por evento.
    bytes32 public mySelector;

    function transfer(uint _amount, address _to) external {
        mySelector = keccak256("Transfer(uint,address,address)");
        //mySelector = Transfer.selector; //Se puede usar el nombre del evento para obtener el selector del mismo
        emit Transfer(_amount, _to, msg.sender);
    }
}


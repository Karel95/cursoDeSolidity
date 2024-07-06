// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


//"payable" se usa con "address" y con "funciones", para indicar que pueden recibir ether.
contract Payable {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function deposit() external payable {
        //owner.transfer(address(this).balance);
    }

    function get() public view returns(uint) {
        return address(this).balance;
    }
}



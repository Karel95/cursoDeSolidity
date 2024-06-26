// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract tiposDeDatos {
    //booleanos
    bool public isInvalid;
    bool public isValid = true;

    //enteros
    int public initialInteger;
    int8 public i8 = type(int8).max;
    int256 public i256 = type(int256).max;
    int public i300 = 9876543210;
    int public i300Neg = -9876543210;

    //enteros sin signo
    uint public initialUInteger;
    uint8 private  u8 = 10;
    uint256 u256 = 1234567890;
    uint public u250 = 300;

    //direccion
    address public initialAddress;
    address public myAddress = address(0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8);
    //0x9D7f74d0C41E726EC95884E0e97Fa6129e3b5E99
}



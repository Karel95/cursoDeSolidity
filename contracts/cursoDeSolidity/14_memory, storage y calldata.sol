// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract dataLocations {
    //memory, storage y calldata
    //Cada vez que declaramos una variable dinamica debemos indicar el dataLocation.

    mapping (uint256 => MyStruct) public myStructs;

    struct MyStruct {
        string foo;
    }

    function funcMemory(string memory _foo, uint256[] calldata _array) external {
        //memory: solo lectura y mientras la funcion este ejecutandose.
        MyStruct memory ms = myStructs[0];
        ms.foo = _foo;
        myStructs[0] = ms;
        _internalFunction(_array);
    }

    function funcStorage(string memory _foo) external {
        //storage: actualizar el estado de la blockchain.
        MyStruct storage ms = myStructs[0];
        ms.foo = _foo;
    }

    function _internalFunction(uint256[] calldata _array) internal {
        //calldata: solo lectura y se utiliza cuando se van a pasar los datos a otra funcion.
    }

}


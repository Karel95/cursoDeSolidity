// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

//IMPORTANTE: Nunca realizar iteraciones infinitas.
contract loops {
    uint[] private  numeros;

    // Función para agregar números a la lista
    function agregarNumero(uint _numero) public {
        numeros.push(_numero);
    }

    //For:
    // Función para sumar todos los números en la lista
    function sumarNumerosFor() public view returns (uint) {
        uint suma = 0;
        for (uint i = 0; i < numeros.length; i++) {
            suma += numeros[i];
        }
        return suma;
    }

    //While:
    // Función para sumar todos los números en la lista
    function sumarNumerosWhile() public view returns (uint) {
        uint suma = 0;
        uint i = 0;
        while (i < numeros.length) {
            suma += numeros[i];
            i++;
        }
        return suma;
    }
}

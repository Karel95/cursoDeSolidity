// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract Padre {
    //Se le asigna la palabra reservada "virtual" a aquellos que seran "padres".
    function foo() public pure virtual returns(string memory) {
        return "Padre";
    }
}

contract PrimerHijo is Padre {
    //Se le asigna la palabra reservada "override" porque usaremos el mismo nombre de la funcion, hay que sobreescribirla.
    function foo() public pure override virtual returns(string memory) {
        return "Primer Hijo";
    }
}

contract SegundoHijo is Padre {
    function foo() public pure override virtual returns(string memory) {
        return "Segundo Hijo";
    }
}

contract PrimerNieto is Padre {
    function foo() public pure override virtual returns(string memory) {
        return "Primer Nieto";
    }
}

contract SegundoNieto is Padre, PrimerHijo {
    //Debe tenerse en cuenta el orden de jerarquia.
    function foo() public pure override(Padre, PrimerHijo) virtual returns(string memory) {
        return super.foo();
    }
}

contract TercerNieto is SegundoHijo, PrimerHijo {
    //En este caso el primer y el segundo hijo estan al mismo nivel jerarquico, por lo que no importa en que orden los coloque.
    function foo() public pure override(SegundoHijo, PrimerHijo) virtual returns(string memory) {
        return super.foo();
    }
}

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;


contract functionSelector {
    function getSelector(string memory _func) external pure returns(bytes4) {
        return bytes4(keccak256(abi.encodePacked(_func)));
    }
}

contract receiver {
    event Log(bytes data);
    address to;
    uint amount;

    function transfer(address _to, uint _amount) external {
        emit Log(msg.data);
        to = _to;
        amount = _amount;
        //data: 0xa9059cbb000000000000000000000000e19b7c663051327acd91537e71fa1fe2e04de50f000000000000000000000000000000000000000000000000000000000000007b
        //IBN (propio de Solidity): 0xa9059cbb (los 2 primeros caracteres no se cuentan, el resto son 4 bytes: 2 caracteres por byte)
        //address _to: 000000000000000000000000e19b7c663051327acd91537e71fa1fe2e04de50f
        //uint _amount: 000000000000000000000000000000000000000000000000000000000000007b
    }
}


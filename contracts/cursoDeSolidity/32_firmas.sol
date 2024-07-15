// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;


contract firmas {
    function verify(address _signer, string memory _message, bytes memory _sig) public pure returns(bool) {
        bytes32 messageHash = getMessageHash(_message);
        bytes32 ethSignedMessage = getEthSignedMessage(messageHash);
        return recoverSigner(ethSignedMessage, _sig) == _signer;
    }

    function getMessageHash(string memory _message) public pure returns(bytes32) {
        return  keccak256(abi.encodePacked(_message));
    }

    function getEthSignedMessage(bytes32 _messageHash) public pure returns(bytes32) {
        return  keccak256(abi.encodePacked(
            "\x19Ethereum signed message:\n32",
            _messageHash
        ));
    }

    function recoverSigner(bytes32 _ethSignedMessageHash, bytes memory _sig) public pure returns(address) {
        (bytes32 r, bytes32 s, uint8 v) = splitSignature(_sig);
        return ecrecover(_ethSignedMessageHash, v, r, s);
    }

    function splitSignature(bytes memory _sig) public pure returns(bytes32 r, bytes32 s, uint8 v) {
        require(_sig.length == 65, "invalid signature length");
        assembly{
            r := mload(add(_sig, 32))
            s := mload(add(_sig, 64))
            v := byte(0, mload(add(_sig, 96)))
        }
    }
}


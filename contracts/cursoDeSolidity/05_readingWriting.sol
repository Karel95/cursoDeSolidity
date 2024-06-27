// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract readingWriting {
    address private myAddress;
    uint256 public myNumber;

    function setNumber(uint256 _myNumber) public {
        myNumber = _myNumber;
    }

    function getAddress() public view returns(address) {
        return myAddress;
    }

    function getSender() public view returns(address) {
        return msg.sender; // msg.sender is the sender of the current transaction
        // msg.sender is the sender of the current transaction, which is the contract itself.
    }

    function getTimestamp() public view returns(uint) {
        return block.timestamp; //block.timestamp is the current time in seconds since the Unix epoch (January 1, 1970).
    }
}


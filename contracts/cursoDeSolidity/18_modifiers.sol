// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract modifiers {
    bool public paused;
    uint public myNumber;
    address public owner;

    constructor(bool _paused) {
        paused = _paused;
        owner = msg.sender;
    }

    function fOne() external isContractPaused {
        myNumber = 1;
    }
    function fTwo() external isContractPaused isOwnerOnly(msg.sender) {
        myNumber = 2;
    }
    function fThree() external updatingMyNumber() {
        myNumber = 3;
    }


    modifier isContractPaused () {
        require(!paused, "Contract is paused");
        _;
    }
    modifier isOwnerOnly(address _owner) {
        require(owner == _owner, "Only owner can call this function");
         _;
    }
    modifier updatingMyNumber() {
        myNumber++;
        _;
        myNumber += 2;
    }
}


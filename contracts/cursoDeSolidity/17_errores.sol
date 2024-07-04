// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract errores {
    //require, revert y assert

    function testRequire(uint _x) public pure {
        require(_x > 10, "Must be greater than 10.");
    }

    function testRevert(uint _x) public pure {
        if (_x <= 10) {
            revert("Must be greater than 10.");
        }
    }
    
    uint public myNumber = 20;
    function testAssert() public view  {
        assert(myNumber < 10); // Failure in this case will throw an exception called Panic(uint errorCode)
    }

    //Example:
    error InsufficientBalance(uint amount, address user);
    uint public userBalance = 100;

    function withdraw(uint _amountToWithdraw) public view {
        if (_amountToWithdraw >= userBalance) {
            revert InsufficientBalance({amount: _amountToWithdraw, user: msg.sender});
        } else {
            // ...
        }
    }
}



// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


//transfer(2300gas, error), send(2300gas, bool) and call(bool, bytes)
contract sendEther {
    constructor() payable {}

    function transferETH(address payable _to) external payable  {
        _to.transfer(msg.value);
    }

    function sendETH(address payable _to) external payable  {
        bool sent = _to.send(msg.value);
        require(sent,"errorSend");
    }

    function callETH(address payable _to) external payable  {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "errorCall");
    }

}

contract receiveEther {
    event Log(uint amount, uint gas);

    receive() external payable {
        emit Log(msg.value, gasleft());
    }
}



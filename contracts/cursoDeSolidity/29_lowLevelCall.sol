// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;


contract weWillCallThisContract {
    event log(string message);

    receive() external payable {}

    fallback() external payable {
        emit log("callback was called");
    }
    function foo(string memory _message, uint _x) external payable returns (string memory, uint){
        return (_message, _x);
    }
}

contract call {
    bytes public data;

    function callFoo(address _contract) external payable {
        (bool succes, bytes memory _data) = _contract.call{value: 111}(abi.encodeWithSignature("foo(string,uint256)", "call foo",123));
        require(succes, "call failed");
        data = _data;
    }
}

//nota: No entendi esta clase jjj.


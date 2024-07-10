// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract useThisContractToCall {
    //2 maneras de llamar otro contrato:
    function setMyNumber(address _contract, uint _newNumber) external {
        myContract(_contract).setMyNumber(_newNumber);
    }
    function setMyNumberV2(myContract _contract, uint _newNumber) external {
        _contract.setMyNumber(_newNumber);
    }

    function setMyNumberAndReceiveEther(address _contract, uint _newNumber) external payable{
        myContract(_contract).setMyNumberAndReceiveEther{value: msg.value}(_newNumber);
    }
    function getMyNumberAndEtherSent(myContract _contract) external view returns(uint, uint) {
        return _contract.getMyNumberAndEtherSent();
    }
}

contract myContract {
    uint public myNumber;
    uint public etherSent = 123;

    function setMyNumber(uint _newNumber) external  {
        myNumber = _newNumber;
    }

    function getMyNumber() external view returns(uint) {
        return myNumber;
    }

    function setMyNumberAndReceiveEther(uint _newNumber) external payable {
        myNumber = _newNumber;
        etherSent = msg.value;
    }

    function getMyNumberAndEtherSent() external view returns(uint, uint) {
        return(myNumber, etherSent);
    }
}


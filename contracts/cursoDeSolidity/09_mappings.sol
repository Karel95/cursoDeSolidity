// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract mappings {
    //(key=>value)
    mapping (address => uint) public myMapping;

    function get(address _address) public view returns(uint){
        return myMapping[_address];
    }

    function set(address _address,uint _value) public{
        myMapping[_address] = _value;
    }

    function remove(address _address) public {
        delete myMapping [_address];
    }
}

contract nestedMappings {
    // nested mapping
    mapping (address=>mapping (uint=>bool)) public myNestedMapping;

    function get(address _address,uint _number) public view returns(bool){
        return myNestedMapping[_address][_number];
    }

    function set(address _address,uint _number,bool _bool) public{
        myNestedMapping[_address][_number] = _bool;
    }

    function remove(address _address, uint _number) public {
        delete myNestedMapping [_address][_number];
    }
}

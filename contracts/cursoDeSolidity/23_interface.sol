// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract Interface {
    IERC20 public myToken;

    constructor(address _token) {
        myToken = IERC20(_token);
    }

    function myFuncOne() public view returns(uint256) {
        return myToken.totalSupply();
    }
    function myFuncTwo() public view returns(uint256) {
        return myToken.balanceOf(msg.sender);
    }
}

contract myTokenOne {
    function totalSupply() public pure returns(uint256) {
        return 100;
    }
}

contract myTokenTwo {
    function totalSupply() public pure returns(uint256) {
        return 200;
    }

}

interface IERC20 {
    //https://ethereum.org/en/developers/docs/standards/tokens/erc-20/
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    //function name() public view returns (string);
    //function symbol() public view returns (string);
    function decimals()external view returns (uint8);
    function totalSupply()external view returns (uint256);
    function balanceOf(address _owner)external view returns (uint256 balance);
    function transfer(address _to, uint256 _value)external returns (bool success);
    function transferFrom(address _from, address _to, uint256 _value)external returns (bool success);
    function approve(address _spender, uint256 _value)external returns (bool success);
    function allowance(address _owner, address _spender)external view returns (uint256 remaining);
}


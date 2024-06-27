// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract unitsInEthereum {
    uint public oneWei = 1 wei;
    bool public isOneWei = 1 wei == 1;
    //1

    uint public oneEther = 1 ether;
    bool public isOneEtherV0 = 1 ether == 1000000000000000000;
    bool public isOneEtherV1 = 1 ether == 1e18;
    bool public isOneEtherV2 = 1 ether == 10**18;
    //1000000000000000000
}



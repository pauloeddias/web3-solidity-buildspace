// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.9;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;

    // json that stores how many waves each address has sent
    mapping(address => uint256) addressToWaves;


    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
        addressToWaves[msg.sender] += 1;
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    //function to get the wave count for all addresses
    function getWavesByAddress(address _address) public view returns (uint256) {
        return addressToWaves[_address];
    }
}
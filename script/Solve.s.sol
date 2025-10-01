// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {Preservation} from "src/Preservation.sol";

contract Solve is Script {
    function run() external {
        vm.startBroadcast();
        
        vm.stopBroadcast();
    }
}
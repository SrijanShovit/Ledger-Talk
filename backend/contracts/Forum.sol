// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Forum {

    address public InitialOwner;
    
    constructor()  {
        InitialOwner=msg.sender;
    }

   
}

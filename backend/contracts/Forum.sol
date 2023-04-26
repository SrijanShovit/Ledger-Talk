// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Forum {
    //addresses of users who can vote
    address[] public users;

    
    constructor()  {
        //adding the contract deployer as a valid user who can vote
        users.push(msg.sender);
    }

   
}

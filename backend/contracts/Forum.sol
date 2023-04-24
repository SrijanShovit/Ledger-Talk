// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Forum {
    
    constructor()  {
        
    }
    struct Question{
        string title;
        string description;
        string askedBy;
        string photoLink;
        string comment;
        uint likes;
        uint dislikes;

    }

   
}

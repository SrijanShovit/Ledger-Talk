// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Forum {
    
    constructor()  {
     }
    function like(uint questionId)public{
    //ques ID assigned
        questions[questionId].like++;//likes increasing 
    }
   
}

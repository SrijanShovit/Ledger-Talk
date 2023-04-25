// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Forum {
    
    constructor()  {
        
    }
// struct to initialize question and its text
struct Question{
    string text;
}
    // mapping of question to its id
    mapping (uint => Question) questions;
    // function returns question text based on its id
    function getQuestion(uint questionId) public view returns (string memory) {
        return questions[questionId].text;
    }
   
}

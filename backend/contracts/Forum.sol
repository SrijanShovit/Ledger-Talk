// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Forum {
    
    constructor()  {
        
    }

    //Dislikes of the question of the particular questionId is increased
    function dislike(uint questionId) public {
        questions[questionId].dislike++;//dislikes increasing
    }

   
}

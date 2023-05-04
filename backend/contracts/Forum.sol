// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Forum {
    //addresses of users who can vote
    address[] public users;

    constructor() {
        users.push(msg.sender);
    }
//array to store the addresses of users who have requested entry
address[] public requests;

//mapping to keep track whether user has already requested entry
mapping(address => bool) public hasRequested;

//mapping to keep track of existing users
mapping (address => bool) public isExistingUser;

function requestEntry() public {
    //check if user has already requested to join
    require(!hasRequested[msg.sender], "User has already requested to join");
    //check if user is already a member 
    require(!isExistingUser[msg.sender], "User is already a member");
    //address of new unaccepted user is added to requests array
    requests.push(msg.sender);
    //marking the entry request
    hasRequested[msg.sender] = true;
}

    struct Question {
        string title;
        string description;
        address askedBy;
        string photoURL;
        uint likes;
        uint dislikes;
    }

    // mapping of question to its id
    mapping (uint => Question) questions;
    // function returns question text based on its id
    function getQuestion(uint questionId) public view returns (string memory) {
        return questions[questionId].description;
    }
   


    Question[] AllQuestions;
    string[] AllComments;
    uint QuestionId;
    mapping(address Users => uint256[] quesIds) UsersQuestions;
    mapping(uint QuestionId => string[] AllComments) Comments;

}

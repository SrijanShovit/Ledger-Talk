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

    Question[] AllQuestions;
    string[] AllComments;
    uint questionId;
    mapping(address Users => uint256[] quesIds) UsersQuestions;
    mapping(uint QuestionId => string[] AllComments) Comments;
    
     // function returns question text based on its id
    function getQuestion(uint questionId) public view returns (string memory) {
        return AllQuestions[questionId].description;
    }
    function postNewQuestion(string memory title, string memory description, string memory photoURL) public {
        // Create a new Question struct and add it to the AllQuestions array
        Question memory newQuestion = Question(
            title, 
            description, 
            msg.sender, //address of askedBy;
            photoURL, 
            0, 
            0);
        AllQuestions.push(newQuestion);
        
        // Add the question ID to the user's list of questions
        uint newQuestionId = AllQuestions.length - 1;
        UsersQuestions[msg.sender].push(newQuestionId);
    }

    function like(uint questionId)public{
           AllQuestions[questionId].likes++;//likes increasing 
    }
   

       //Dislikes of the question of the particular questionId is increased
    function dislike(uint questionId) public {
        AllQuestions[questionId].dislikes++;//dislikes increasing
    }

}

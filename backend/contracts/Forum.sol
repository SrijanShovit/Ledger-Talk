// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Forum {
    constructor() {}

    //Created the struct for the user
    struct User {
        string name;
        bool isVoted;
    }

    //Created the struct for new user
    struct NewUser {
        string name;
        uint votecount;
    }

    //Mapped the address with the existing user
    mapping (address => User) user;

    //Mapped the address with the new user
    mapping (address => NewUser) newuser;

    //Voting function
    //It takes the address of the existing user
    //and new user
    function vote(address _add, address _newadd) public {
        //Checks whether the existing user voted
        require(!(user[_add].isVoted));
        //Increases the vote by 1
        newuser[_newadd].votecount++;
        //Marking that the existing user has already voted
        user[_add].isVoted = true;
    }
}

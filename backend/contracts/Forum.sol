// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Forum {
    constructor() {}

    

    //Mapped the address with the boolean whether the user has voted or not.
    mapping (address => bool) user_isVoted;

    //Mapped the address with the votecount
    mapping (address => uint) newuser_votecount;

    //Voting function
    //It takes the address of the existing user
    //and new user
    function vote(address _add, address _newadd) public {
        //Checks whether the existing user voted
        require(!(user[_add]));
        //Increases the vote by 1
        newuser[_newadd]++;
        //Marking that the existing user has already voted
        user[_add] = true;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract Twetter {
    mapping(address => string) public tweets;

    // The function parameter was missing a name.
    // It should be "string memory _tweet" instead of "string memory".
    function createTweet(string memory _tweet) public {
        // You had a typo here. It should be "_tweet" instead of "tweet".
        tweets[msg.sender] = _tweet;
    }

    // The function parameter was missing.
    // You need to specify the address of the owner whose tweet you want to retrieve.
    function getTweet(address _owner) public view returns (string memory) {
        return tweets[_owner];
    }
}

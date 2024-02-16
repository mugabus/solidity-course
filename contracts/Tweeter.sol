// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

// 1️⃣ Create a Twitter Contract 
// 2️⃣ Create a mapping between user and tweet 
// 3️⃣ Add function to create a tweet and save it in mapping
// 4️⃣ Create a function to get Tweet 
// 5️⃣ Add array of tweets 

contract Twitter {
    // Struct to represent a tweet
    struct Tweet {
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }

    // Mapping to store tweets of each user
    mapping(address => Tweet[]) public tweets;

    // Function to create a new tweet
    function createTweet(string memory _tweet) public {
        // Create a new tweet object
        Tweet memory newTweet = Tweet({
            author: msg.sender,
            content: _tweet,
            timestamp: block.timestamp,
            likes: 0
        });
        // Push the new tweet to the sender's array of tweets
        tweets[msg.sender].push(newTweet);
    }

    // Function to get a specific tweet of a user by index
    function getTweet(address _owner, uint256 _i) public view returns (Tweet memory) {
        // Ensure the index is within bounds
        require(_i < tweets[_owner].length, "Tweet index out of bounds");
        // Retrieve and return the tweet at the specified index
        return tweets[_owner][_i];
    }

    // Function to get all tweets of a user
    function getAllTweets(address _owner) public view returns (Tweet[] memory) {
        // Return the array of tweets for the given user
        return tweets[_owner];
    }
}
 // i will repeat this code untill i can it the logic done in my fucking head
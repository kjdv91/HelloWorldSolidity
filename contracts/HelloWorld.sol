//SPDX-License-Identifier:MIT
pragma solidity ^0.8.4;

contract HelloWorld{
    event UpdateMessage(string oldStr, string newStr);

    string public message;//variable de estado

    constructor (string memory InitMessage){
        message = InitMessage;
    }

    function update(string memory newMessage ) public {
        string memory oldStr = message;
        message = newMessage;
        emit UpdateMessage(oldStr, newMessage);

    }

}
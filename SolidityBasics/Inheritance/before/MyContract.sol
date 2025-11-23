// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; //telling the compiler what version we will use!
contract MyContract {
    //1- inheritence:
    //goal here only contract owner can see the secret!
    string secret; //local variable stored in blockchain
    address owner;

    modifier onlyOwner() { // make sure the owner is the one who deploy the contract and requests the secret
        require(msg.sender == owner, "must be owner");
        _;
    }

    constructor(string memory _secret) { //set the secret var
        secret = _secret; //_secret is local var passed as an argument when the function is called!
        owner = msg.sender; //The address of person who deploy the contract
    }

    function getSecret() public view returns (string memory) {
        return secret;
    } 


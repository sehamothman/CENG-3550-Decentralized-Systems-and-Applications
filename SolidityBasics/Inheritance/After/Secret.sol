// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; //telling the compiler what version we will use!
//1- Inheritence :  A child contract can inherit some behaviours from its parent contract.
//2- Fcatories :smart contract that creates other smart contracts!
//3- Interaction : call smart contracts inside another smart contracts!

contract Ownable {
    address owner;

    constructor() {
        owner = msg.sender; //The address of person who deploy the contract
    }

    modifier onlyOwner() { // make sure the owner is the one who deploy the contract and requests the secret
        require(msg.sender == owner, "must be owner");
        _;
    }
}

contract SecretVault {
    string secret;

    constructor(string memory _secret) {
        secret = _secret;
    }

    function getSecret() public view returns (string memory) {
        return secret;
    }
}

//Factory: smart contract that creates other smart contracts!
contract Secret is Ownable { //will fetch the secret from the SecretVault contract
    address secretVault;

    constructor(string memory _secret) {
        SecretVault _secretVault = new SecretVault(_secret); //create instance of a contract! new contract created!
        secretVault = address(_secretVault); //save address of secret vault!
        super;
    }

    function getSecret() public view onlyOwner returns (string memory) {
        return SecretVault(secretVault).getSecret();
    }
}

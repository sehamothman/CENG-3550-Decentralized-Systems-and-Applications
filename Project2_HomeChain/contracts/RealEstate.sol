//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.30;

// Importing OpenZeppelin's ERC721 implementation
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
contract RealEstate is ERC721URIStorage {
    // 1- Use Third party library to help creating the NFT Quickly!
    //OpenZeppelin library is a great resource https://docs.openzeppelin.com/contracts/5.x/erc721
    //Openzeppelin was installed with npm ! 

    //ERC-721 is basically a type of contract that lets you create these unique tokens, and each token is kind of like its own individual entity with its own metadata. So you can think of each token as a unique digital item that stands on its own and represents something one-of-a-kind.

    using Counters for Counters.Counter; //use all the helpful functions that the Counters library provides for this Counter type.
    Counters.Counter private _tokenIds;

    constructor() ERC721("Real Estate", "REAL") {}

    function mint(string memory tokenURI) public returns (uint256) {
        //after the contract created and deployed to the blockchain we will call the MINT function it will create this properties from scratch
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }

    function totalSupply() public view returns (uint256) {
        return _tokenIds.current(); //represents how many tokens have been minted so far.
    }


}

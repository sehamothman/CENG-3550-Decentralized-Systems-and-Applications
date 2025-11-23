//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.30;

// Importing OpenZeppelin's ERC721 implementation
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
contract RealEstate is ERC721URIStorage {
    // 1- Use Third party library to help creating the NFT Quickly!
    //Zeppelin library is a great resource https://docs.openzeppelin.com/contracts/5.x/erc721
    //zeppelin was installed with npm ! 

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("Real Estate", "REAL") {}

    function mint(string memory tokenURI) public returns (uint256) {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }

    function totalSupply() public view returns (uint256) {
        return _tokenIds.current();
    }


}

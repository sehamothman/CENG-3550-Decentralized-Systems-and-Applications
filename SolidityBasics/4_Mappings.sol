// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Mappings {
    //Mappings : type of data which lets you store data on the blockchain with key-value pairs.
        //created a mappings of names!
        mapping(uint256 => string) public names;
        //key here is an ID! 

        constructor() { //assign values to the keys!
            names[1] = "Adam"; // key 1 = Adam
            names[2] = "Bruce";//key 2 = Bruce
            names[3] = "Carl"; //key 3 = Carl
        }

        
        //example to treat the blockchain like a database!
        mapping(uint256 => Book) public books;
       

        struct Book { //create a custom data type! (LIKE A TABLE!)
            string title;
            string author;
        }

        //add items to the mappings!
        function addBook(uint256 _id, string  memory _title, string memory _author) public {
            books[_id] = Book(_title, _author);
        }

        //Nested mappings : MAPPING OF MAPPINGS!

        //a new mapping the value of it is the previous mapping!
        mapping(address => mapping(uint256 => Book)) public myBooks; //like a library! address is key which shows the address of the bood owner, and the value is mapping which is all books related to this account!

        //
        function addMyBook(
            uint256 _id,
            string memory _title,
            string memory _author
        ) public {
            //msg is a global variable created by the blockchain! expose by solidity when exexuting the smart contract!
            myBooks[msg.sender][_id] = Book(_title, _author);
            //msg.sender is the key (ADDRESS)
        }
}

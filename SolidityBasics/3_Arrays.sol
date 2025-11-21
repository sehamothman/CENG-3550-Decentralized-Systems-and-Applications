//SPDX-License-Identifier: MIT
    pragma solidity ^0.8.30;

    contract Contract2 {
        //ARRAYS : are sorted groupings of different pieces of data.
        uint [] public uintarray = [1,2,3];
        uint256[] public uint256Array = [1, 2, 3];
        string[] public stringArray = ["apple", "banana", "carrot"];
        //i can create empty array !
        string[] public values; //State variable
        // creating 2D arrays!
        uint256[][] public array2D = [[1, 2, 3], [4, 5, 6]];


        function addValue(string memory _value) public {
            //_value variable is local variable! 
            values.push(_value);
        }
        //get the length of an array!
        function valueCount() public view returns (uint256) {
            return values.length; //length is property not function!
        }    

    }

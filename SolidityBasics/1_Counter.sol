// SPDX-License-Identifier: MIT
//previous line is license modifier!!
    pragma solidity ^0.8.30;
//previous line is Solidity langauge version used!

    //Two versions of code are written here as you can see, but last version is better because it’s simpler, cleaner, and uses Solidity’s automatic features!
    //No need for constructor since the variable can be initialized directly when declared.
    //The "public" keyword already creates a getter function automatically, so we don’t need to define getCount().
    //Overall: less code, same functionality, easier to read and maintain!

//---------------------------------LAST BEST VERSION OF THE CODE ---------------------------------------------------:

    //Steps to compile the code :
    //1- Compile it.
    //2- Deploy it & run the transactions.
    contract Counter {
        uint public count = 0; //state variable initialized to 0

        function incrementCount() public {
            count++; //increment count by 1
        }
    }
//  --------------------------------------------- OLD VERSION OF THE CODE ---------------------------------------------------

////SPDX-License-Identifier: MIT
//pragma solidity ^0.8.0; //telling the compiler what version we will use!
//create smart contract!!
/*
contract Counter {
    //codes goes here!!
    //create a basic variable will be changed (set) by user by 1
    //state var stored on the blockchain!
    uint256 public count; //unit256 is the type of var, unsigned integer, an int without a sign! Which means CAN'T BE -1

    //constructor Runs only once!
    constructor() public { //will be called when contract creation!
        count = 0;
    }
    //INSTADE OF INSTRUCTOR WHEN DEFINING THE VARIABLE CAN DO IT LIKE : uint public count =0; 

    //GET COUNT FUNCTION CAN BE DELETED BECAUSE OF PUBLIC KEYWORD BEFORE THE COUNT VARIABLE! SOLIDITY WILL CALL A COUNT () FUNCTION TO GET THE VALUE!! 

    //creating a READ function, which is a piece of code which will be reused multiple times!
    function getCount() public view returns (uint256) {
        //modifier added!public means we can call the function outside of the smart contract!
        //modifiers : public , internal : only called inside the smart contract!
        return count;
    }

    function incrementCount() public { //WRITE-function to set the count!
        count++; //when +1 done! we do a modification to original var! the var stored in the blockchain! WE change the blockchain !HAVE TO PAY GAS!
    }

    //READ Functions are free, WRITE Functions have cost(pay Cost)!
}
*/

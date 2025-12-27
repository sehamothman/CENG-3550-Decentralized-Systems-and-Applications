// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; //telling the compiler what version we will use!
contract MyContract {
    //1- VARIABLES : 
    //ways to store informations inside my smart contract to reuse it!
    // State Variables vs Local Variables :
    //1-State Variables : before putting the keyword "public" Scope is inside the entire contract but now all contracts can access it!
    uint  public myUint = 1;

    //uint vs uint256 : both refer to unsigned integers, but uint256, the (256) are bytes for the size of this int! uint short for uint256 (same)
    // int vs unit
    int8 myInt = 1; //can be negative!
    //why different types of ints? because we care about the size that we put the informations inside the smart contract! uint8 is smaller! 

    function getMyUnit() public returns(uint){
        myUint++;
        return myUint;
    }

    //2-Local Variables : Variables exist inside solidity functions.
    function getValue() public pure returns(uint){
        //Local Variable Example: this var only reachable inside this function! Variable Scope!
        uint value =1;
        return value;
    }

    //2- STRINGS
    string public myString = "Hello, World"; //size ofa string is dynamic.
    bytes32 public myBytes32 = "Hello, World!"; //Fixed-size 32-byte array.

    // 3- Address : like a uniqe username on the blockchain to an account or connected to smart contract address!
    address public myAddress = 0x4feD579bEA192c72b2855B92e93504c347535f49;

    // 4- Struct : can create custom data type! 
    struct MyStruct {
        uint256 myUint256;
        string myString;
    }
    //create instance of it
    MyStruct public myStruct = MyStruct(1, "Hello, World!");



}

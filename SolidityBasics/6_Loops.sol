// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
contract Loops{
        //program : we will have arrays of numbers and check if they are even or odd! the result should be the number of even numbers insode a array
        uint256 [] public numbers  = [1,2,3,4,5,6,7,8,9,10];

        function CheckNumberIsEven(uint _number) public pure returns (bool){
            if(_number % 2 ==0){
                return true;
            } else {
                return false;
            }
        }



        //loops : loop through an array and preform an action on each element!
        function CountEvenNumbers() public view returns (uint){
            uint count =0;
            for (uint i=0; i< numbers.length; i++){
                if(CheckNumberIsEven(numbers[i])){
                    count ++;
                }
            }
            return count;

        }
        //Example to use in smart contracts!!
        address public owner; //STATE VARIABLE!

        constructor() {
            owner = msg.sender; //Sets the owner to the address that deployed the contract.
        }
        
        
        function isOwner() public view returns (bool) { //checks if current address is the owner!
                //it will check the owner of the contract RETURN TRUE IF 
                return (msg.sender == owner);
                //msg.sender It always represents who is interacting with the contract right now.
        }

          
}

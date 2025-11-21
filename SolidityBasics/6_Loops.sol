// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
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

          
}

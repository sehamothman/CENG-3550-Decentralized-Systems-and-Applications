// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Conditionals {
  //Conditionals : is control flow structure! like a logic gate inside the program! if this then that!
        //IF (some condition) 
        //THEN (do some action)
        //ELSE (do some other action) 

        //program : we will have arrays of numbers and check if they are even or odd!
        uint256 [] public numbers  = [1,2,3,4,5,6,7,8,9,10];

        function CheckNumberIsEven(uint _number) public pure returns (bool){
            if(_number % 2 ==0){
                return true;
            } else {
                return false;
            }
        }

}

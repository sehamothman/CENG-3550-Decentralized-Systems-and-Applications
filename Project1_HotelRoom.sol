//SPDX-License-Identifier: MIT
    pragma solidity ^0.8.30;

    // Showcase payment transfers, enums, modifiers & events
        
  contract HotelRoom {
    //hotelroom contract will be responsible for booking a hotel room and opening it.
    // booking by ether crypto
    address payable public owner; //address of a person who owns the hotel room!
    //payable lets the address recive etherum cryptocurrency!

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant; //defult room status is vacent ! AVALIABLE! 
    }

    function book() public payable onlyWhileVacant  costs (2 ether){
        // 1- pay the owner of the hotel room
        //owner.transfer(msg.value); //msg. value amount of ether sent!
        //transfer function sends crypto currency to an address (RECIPIENT : ROOM OWNER)

        //3-check price
        //require(msg.value >= 2 ether , "Not enough ether provided");

         //4-check status ; to not book it twice if its occupied!
        //require(currentStatus == Statuses.Vacant , "Currently Occupied!"); //when you put require function inside another function it will check whether it's true or false which means here whether it is occupied or not

        //2-to update status of hotel room from vacent to occupied
        //change the status to occupied!
        currentStatus = Statuses.Occupied; //when you book a room the status of it will change into occupied directly!
        //change this line! transfer have issues!
        //owner.transfer(msg.value);
        //into this : what does this mean??
        (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        //to get the status of it 
        require(sent);

        emit Occupy(msg.sender, msg.value);
        
    }

    // Vacant
    //Occupied

    enum Statuses { //enum is data structure which holds collection of things which is never gonna change!
        Vacant,
        Occupied
    }// good to keep status of a hotel room!

    Statuses public currentStatus; //to track current status!

    //Modifiers!

    modifier onlyWhileVacant() {
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        _;
    }

    modifier costs(uint256 _amount) {
        require(msg.value >= _amount, "Not enough Ether provided.");
        _;
    }

    //blockchain lets me emit an event everytime a function is called!
    //emit an event anytime a booking happen! alert on my phone that the room is booked or i can see history of all  events! (entire sets of events when the room was booked! )
    event Occupy(address _occupant, uint256 _value); //tells the address of who booked the hotel room and the value they paid!!


    
}

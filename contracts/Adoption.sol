pragma solidity ^0.4.17;

contract Adoption {

    address[16] public adopters;

    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15, "petId is out of range, expected 0...15");

        // The address of the person or smart contract who called this function is denoted by msg.sender.
        adopters[petId] = msg.sender;

        return petId;
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16]) {
        return adopters;
    }
}
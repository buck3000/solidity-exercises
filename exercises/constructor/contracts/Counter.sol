pragma solidity 0.4.23;

contract Counter {
   uint public count;
   
   constructor(uint _count) public{
     count = _count;
   }
}

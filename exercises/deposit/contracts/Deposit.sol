pragma solidity 0.4.23;

import "./Ownable.sol";


contract Deposit is Ownable {

  constructor() public payable{
  }

  function deposit() payable public{
    require(msg.value > 1);
  }

  function withdraw() public onlyOwner{
    
  }

}

pragma solidity 0.4.23;

import "./Ownable.sol";


contract Deposit is Ownable {  

  constructor() public payable{}

  function () public payable {}

  function withdraw() public onlyOwner{
    owner.transfer(address(this).balance);
  }

}

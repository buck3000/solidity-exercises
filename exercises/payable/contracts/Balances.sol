pragma solidity 0.4.23;


contract Balances {
  mapping(address => uint) public balances;

  function deposit() payable public{
    require(msg.value > 1);
    balances[msg.sender] += msg.value;
  }
}

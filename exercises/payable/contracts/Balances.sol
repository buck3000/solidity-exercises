pragma solidity 0.4.23;


contract Balances {
  mapping(address => uint) public balances;

    // implement deposit() function and track users balances, msg.value has to be greater than 1 finney
  function deposit() payable public{
    require(msg.value > 1);
    balances[msg.sender] += msg.value;
  }
}

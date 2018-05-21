pragma solidity 0.4.23;

contract Counter {
    uint public count = 0;
    function tick() returns (uint) {
        count += 1;
        return count;
    }
    function reset() returns (uint){
      count = 0;
      return count;
    }
}

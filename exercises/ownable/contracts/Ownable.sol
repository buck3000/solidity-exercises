pragma solidity 0.4.23;

contract Ownable {
    address public owner;

    constructor() public {
      owner = msg.sender;
    }

    // implement onlyOwner modifier that requires sender to be an owner

    modifier onlyOwner(){
      require(owner == msg.sender);
      _;
    }

    function transferOwnership(address _newOwner) external onlyOwner{
      owner = _newOwner;
    }
}

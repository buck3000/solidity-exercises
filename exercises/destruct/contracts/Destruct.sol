pragma solidity 0.4.23;


contract DelegatedDestruct {
    function prune(address _address) public {
      require(_address != 0);
      selfdestruct(_address);
    }
}

contract Destruct {
    DelegatedDestruct delegate;
    uint public ping = 1;

    function () public payable {}

    constructor(DelegatedDestruct _delegate) public {
      delegate = _delegate;
    }

    function prune(address _address) public {
      require(_address != 0);
      selfdestruct(_address);
    }

    function delegatePrune(address _address) public {
      require(address(delegate).delegatecall(bytes4(keccak256("prune(address)")), _address));
    }
}

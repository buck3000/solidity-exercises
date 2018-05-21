pragma solidity 0.4.23;

contract Airdrop {
    address[] public addresses;
    mapping(address => bool) public isSet;
    mapping(address => uint) public balances;

  function addAddress(address _address) {
    require(isSet[_address] == false);
    isSet[_address] = true;
    addresses.push(_address);
  }

  function removeAddress(address _address) {
    require(isSet[_address] == true);
    delete isSet[_address];
    delete balances[_address];

    for(uint i = 0; i < addresses.length; i++) {
        if (addresses[i] == _address) {
            delete addresses[i];
        }
    }
  }

  function airdrop(uint value) {
    for(uint i = 0; i < addresses.length; i++) {
        if (isSet[addresses[i]] == true) {
            balances[addresses[i]] += value;
        }
    }
  }
}

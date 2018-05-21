pragma solidity 0.4.23;

contract Team {
    struct Member {
        string name;
    }

    mapping(uint => Member) public members;

    function setMember(uint _id, string _name) {
      members[_id] = Member(_name);
    }

    function getMemberName(uint _id) returns (string) {
      return members[_id].name;
    }

    function removeMember(uint _id) {
      delete members[_id];
    }
}

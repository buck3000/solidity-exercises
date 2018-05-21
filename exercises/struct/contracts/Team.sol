pragma solidity 0.4.23;

contract Team {
    struct Manager {
      string name;
      uint score;
    }

    Manager manager;

    function setManager(string _name, uint _score) public {
        manager.name = _name;
        manager.score = _score;
    }

    function increaseManagerScore(uint _score) public {
        manager.score += _score;
    }
}

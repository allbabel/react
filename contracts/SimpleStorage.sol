pragma solidity ^0.5.0;

contract SimpleStorage {
  uint storedData;
  event LogChanged(uint value);

  function set(uint x) public {
    storedData = x;
    emit LogChanged(storedData);
  }

  function get() public view returns (uint) {
    return storedData;
  }
}

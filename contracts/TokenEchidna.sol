pragma solidity ^0.7.0;

import './Token.sol';

// Example echidna test to showcase CI
contract TokenEchidna is Token {
  uint public constant42;

  constructor() Token() public {
      constant42 = 42;
  }

  function setVariable(uint number) public {
    constant42 = number;
  }

  function echidna_test_constantness() public returns (bool) {
    return constant42 == 42;
  }

  function echidna_test_bitflips() public returns (bool) {
    return true;
  }
}

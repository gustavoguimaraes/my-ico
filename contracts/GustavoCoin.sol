pragma solidity ^0.4.11;

import 'zeppelin-solidity/contracts/token/MintableToken.sol';

contract GustavoCoin is MintableToken {
  string public name = "GUSTAVO COIN";
  string public symbol = "GUS";
  uint256 public decimals = 18;
}

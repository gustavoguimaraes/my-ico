pragma solidity 0.4.19;

import 'zeppelin-solidity/contracts/token/ERC20/MintableToken.sol';

contract GustavoCoin is MintableToken {
  string public name = "GUSTAVO COIN";
  string public symbol = "GUS";
  uint256 public decimals = 18;
}

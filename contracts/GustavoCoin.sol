pragma solidity 0.4.24;

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol';

contract GustavoCoin is ERC20Mintable {
    string public name = "GUSTAVO COIN";
    string public symbol = "GUS";
    uint8 public decimals = 18;
}
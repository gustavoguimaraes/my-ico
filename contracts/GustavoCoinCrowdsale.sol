pragma solidity ^0.4.11;

import './GustavoCoin.sol';
import 'zeppelin-solidity/contracts/crowdsale/Crowdsale.sol';


contract GustavoCoinCrowdsale is Crowdsale {

  GustavoCoin public token;

  function GustavoCoinCrowdsale(uint256 _startBlock, uint256 _endBlock, uint256 _rate, address _wallet) {
    require(_startBlock >= block.number);
    require(_endBlock >= _startBlock);
    require(_rate > 0);
    require(_wallet != 0x0);

    token = createTokenContract();
    startBlock = _startBlock;
    endBlock = _endBlock;
    rate = _rate;
    wallet = _wallet;
  }

  // creates the token to be sold.
  // override this method to have crowdsale of a specific MintableToken token.
  function createTokenContract() internal returns (GustavoCoin) {
    return new GustavoCoin();
  }

}

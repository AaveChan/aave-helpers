// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV2Ethereum, AaveV2EthereumAssets} from 'aave-address-book/AaveV2Ethereum.sol';
import './AaveV2PayloadBase.sol';

/**
 * @dev Base smart contract for an Aave v2 rates update on Ethereum.
 * @author BGD Labs
 */
// TODO: Add rates factory address after deploying
abstract contract AaveV2PayloadEthereum is
  AaveV2PayloadBase(IEngine(address(0)))
{
  function getPoolContext() public pure override returns (IEngine.PoolContext memory) {
    return IEngine.PoolContext({networkName: 'Ethereum', networkAbbreviation: 'Eth'});
  }
}
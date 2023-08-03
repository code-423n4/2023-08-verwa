# veRWA audit details
- Total Prize Pool: $36,500 (Awards in your choice of USDC or CANTO)
  - HM awards: $25,500 
  - Analysis awards: $1,500 
  - QA awards: $750 
  - Bot Race awards: $2,250 
  - Gas awards: $0 
  - Judge awards: $3,600
  - Lookout awards: $2,400 
  - Scout awards: $500 USDC
- Join [C4 Discord](https://discord.gg/code4rena) to register
- Submit findings [using the C4 form](https://code4rena.com/contests/2023-08-canto-rwa/submit)
- [Read our guidelines for more details](https://docs.code4rena.com/roles/wardens)
- Starts August 7, 2023 20:00 UTC 
- Ends August 10, 2023 20:00 UTC
  
❗️Awarding Note for Wardens, Judges, and Lookouts: If you want to claim your awards in $ worth of CANTO, you must follow the steps outlined in this [thread](INSERT LINK TO THREAD in AUDIT CHANNEL); otherwise you'll be paid out in USDC.

⚠️ Note that for this audit, gas optimizations are out of scope. The veRWA team will not be awarding prize funds for gas-specific submissions.

## Automated Findings / Publicly Known Issues

Automated findings output for the audit can be found [here](bot-report.md) within 24 hours of audit opening.

*Note for C4 wardens: Anything included in the automated findings output is considered a publicly known issue and is ineligible for awards.*

- **Mistakes by Governance**: We assume that all calls that are performed by the governance address are performed with the correct parameters. Moreover, it is the responsibility of the governance to ensure that `LendingLedger` always contains enough CANTO.
- **User mistake**: Users can forfeit the rewards for some epochs by skipping them when calling `claim`. These rewards will be irrevocably lost.
- **Checkpoint is called at least once in five years**: Curve and FIAT DAO have the assumption that the `VotingEscrow._checkpoint` function is called at least once in a five year period. Because we use the same contracts, we also inherit this assumption.

# Overview

The contracts implement a voting-escrow incentivization model for Canto RWA (Real World Assets) similar to [veCRV](https://curve.readthedocs.io/dao-vecrv.html) with its [liquidity gauge](https://curve.readthedocs.io/dao-gauges.html). Users can lock up CANTO (for five years) in the `VotingEscrow` contract to get veCANTO. They can then vote within `GaugeController` for different lending markets that are white-listed by governance. Users that provide liquidity within these lending markets can claim CANTO (that is provided by CANTO governance) from `LendingLedger` according to their share.

For instance, there might be lending markets X, Y, and Z where Alice, Bob, and Charlie provide liquidity. In lending market X, Alice provides 60% of the liquidity, Bob 30%, and Charlie 10% at a particular epoch (point in time). At this epoch, lending market X receives 40% of all votes. Therefore, the allocations are:
- Alice: 40% * 60% = 24% of all CANTO that is allocated for this epoch.
- Bob: 40% * 30% = 12% of all CANTO that is allocated for this epoch.
- Charlie: 40% * 10% = 4% of all CANTO that is allocated for this epoch.

# Scope

| Contract | SLOC | Purpose | Libraries used |  
| ----------- | ----------- | ----------- | ----------- |
| [src/GaugeController.sol](src/GaugeController.sol) | 192 | Allows users to vote for lending markets (gauges) | [`@openzeppelin/*`](https://openzeppelin.com/contracts/) |
| [src/VotingEscrow.sol](src/VotingEscrow.sol) | 413 | Users can lock up CANTO for five years and receive veCANTO in return (which is used to measure voting power) | [`@openzeppelin/*`](https://openzeppelin.com/contracts/) |
| [src/LendingLedger.sol](src/LendingLedger.sol) | 144 | Tracks the liquidity of all users in the different lending markets, calculates the shares to receive for each user / market, and allows users to claim their CANTO. | - |

## Out of scope

All test files (`src/test`) are out of scope.

# Additional Context

## `VotingEscrow`
The used `VotingEscrow` implementation is a fork of the FIAT DAO implementation, which is itself a fork / solidity port of Curve's original implementation. A few modifications were made to the FIAT DAO implementation, for instance support for underlying native tokens instead of ERC20 and a fixed lock time (of 5 years) that is reset with every action.

## `GaugeController`
The `GaugeController` contract is a Solidity port of Curve's [`GaugeController.vy`](https://github.com/curvefi/curve-dao-contracts/blob/master/contracts/GaugeController.vy). Gauge types were removed (there is only one type for veRWA), resulting in a few other code changes. Moreover, the whitelisting of gauges (lending markets) is performed differently than in the original gauge implementation.

The controller allows users to vote for gauge weights, i.e. how much of one epoch's CANTO is allocated to one gauge. The controller then enables to query the relative weights for all the gauges at any time in the past.

## `LendingLedger`
The lending ledger keeps track of how much liquidity a user has provided in a market at any time in the past. To do so, the (white-listed) markets need to call `sync_ledger` on every deposit / withdrawal by a user. Canto governance calls `setRewards` and sends CANTO to the contract to control how much CANTO is allocated for one epoch.

Users can then claim the CANTO according to their balance in the market and the weight of this market in the `GaugeController`.

### Epochs
We discretize time into one-week epochs and perform all calculations per epoch (week). Claiming is only possible after an epoch has ended.

## Scoping Details 
```
- If you have a public code repo, please share it here: Currently private 
- How many contracts are in scope?: 3  
- Total SLoC for these contracts?:  749
- How many external imports are there?: 3 
- How many separate interfaces and struct definitions are there for the contracts within scope?: 0  
- Does most of your code generally use composition or inheritance?: Composition
- How many external calls?:   0
- What is the overall line coverage percentage provided by your tests?: 95%
- Is this an upgrade of an existing system?: No
- Check all that apply (e.g. timelock, NFT, AMM, ERC20, rollups, etc.): ERC-20 Token
- Is there a need to understand a separate part of the codebase / get context in order to audit this part of the protocol?:  No
- Please describe required context:  N/A
- Does it use an oracle?:  No
- Describe any novel or unique curve logic or mathematical models your code uses: None, standard curve VE model (linear) 
- Is this either a fork of or an alternate implementation of another project?: Yes. Voting Escrow is forked from FIAT DAO (https://github.com/code-423n4/2022-08-fiatdao/blob/main/contracts/VotingEscrow.sol), GaugeController is ported from Curve's Vyper implementation to Solidity   
- Does it use a side-chain?: No
- Describe any specific areas you would like addressed: 
```

# Tests

```
foundryup && git clone git@github.com:code-423n4/2023-08-verwa.git && cd 2023-08-verwa && forge test
```

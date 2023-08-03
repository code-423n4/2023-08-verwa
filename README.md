# ✨ So you want to run an audit

This `README.md` contains a set of checklists for our audit collaboration.

Your audit will use two repos: 
- **an _audit_ repo** (this one), which is used for scoping your audit and for providing information to wardens
- **a _findings_ repo**, where issues are submitted (shared with you after the audit) 

Ultimately, when we launch the audit, this repo will be made public and will contain the smart contracts to be reviewed and all the information needed for audit participants. The findings repo will be made public after the audit report is published and your team has mitigated the identified issues.

Some of the checklists in this doc are for **C4 (🐺)** and some of them are for **you as the audit sponsor (⭐️)**.

---

# Repo setup

## ⭐️ Sponsor: Add code to this repo

- [ ] Create a PR to this repo with the below changes:
- [ ] Provide a self-contained repository with working commands that will build (at least) all in-scope contracts, and commands that will run tests producing gas reports for the relevant contracts.
- [ ] Make sure your code is thoroughly commented using the [NatSpec format](https://docs.soliditylang.org/en/v0.5.10/natspec-format.html#natspec-format).
- [ ] Please have final versions of contracts and documentation added/updated in this repo **no less than 48 business hours prior to audit start time.**
- [ ] Be prepared for a 🚨code freeze🚨 for the duration of the audit — important because it establishes a level playing field. We want to ensure everyone's looking at the same code, no matter when they look during the audit. (Note: this includes your own repo, since a PR can leak alpha to our wardens!)


---

## ⭐️ Sponsor: Edit this README

Under "SPONSORS ADD INFO HERE" heading below, include the following:

- [ ] Modify the bottom of this `README.md` file to describe how your code is supposed to work with links to any relevent documentation and any other criteria/details that the C4 Wardens should keep in mind when reviewing. ([Here's a well-constructed example.](https://github.com/code-423n4/2022-08-foundation#readme))
  - [ ] When linking, please **provide all links as full absolute links** versus relative links
  - [ ] All information should be provided in markdown format (HTML does not render on Code4rena.com)
- [ ] Under the "Scope" heading, provide the name of each contract and:
  - [ ] source lines of code (excluding blank lines and comments) in each
  - [ ] external contracts called in each
  - [ ] libraries used in each
- [ ] Describe any novel or unique curve logic or mathematical models implemented in the contracts
- [ ] Does the token conform to the ERC-20 standard? In what specific ways does it differ?
- [ ] Describe anything else that adds any special logic that makes your approach unique
- [ ] Identify any areas of specific concern in reviewing the code
- [ ] Review the Gas award pool amount. This can be adjusted up or down, based on your preference - just flag it for Code4rena staff so we can update the pool totals across all comms channels. 
- [ ] Optional / nice to have: pre-record a high-level overview of your protocol (not just specific smart contract functions). This saves wardens a lot of time wading through documentation.
- [ ] See also: [this checklist in Notion](https://code4rena.notion.site/Key-info-for-Code4rena-sponsors-f60764c4c4574bbf8e7a6dbd72cc49b4#0cafa01e6201462e9f78677a39e09746)
- [ ] Delete this checklist and all text above the line below when you're ready.

---

# veRWA audit details
- Total Prize Pool: $36,050 (Awards in your choice of USDC or CANTO)
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

[ ⭐️ SPONSORS ADD INFO HERE ]

# Overview

The contracts implement a voting-escrow incentivization model for Canto RWA (Real World Assets) similar to [veCRV](https://curve.readthedocs.io/dao-vecrv.html) with its [liquidity gauge](https://curve.readthedocs.io/dao-gauges.html). Users can lock up CANTO (for five years) in the `VotingEscrow` contract to get veCANTO. They can then vote within `GaugeController` for different lending markets that are white-listed by governance. Users that provide liquidity within these lending markets can claim CANTO (that is provided by CANTO governance) from `LendingLedger` according to their share.

For instance, there might be lending markets X, Y, and Z where Alice, Bob, and Charlie provide liquidity. In lending market X, Alice provides 60% of the liquidity, Bob 30%, and Charlie 10% at a particular epoch (point in time). At this epoch, lending market X receives 40% of all votes. Therefore, the allocations are:
- Alice: 40% * 60% = 24% of all CANTO that is allocated for this epoch.
- Bob: 40% * 30% = 12% of all CANTO that is allocated for this epoch.
- Charlie: 40% * 10% = 4% of all CANTO that is allocated for this epoch.

# Scope

*List all files in scope in the table below (along with hyperlinks) -- and feel free to add notes here to emphasize areas of focus.*

*For line of code counts, we recommend using [cloc](https://github.com/AlDanial/cloc).* 

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

*Provide every step required to build the project from a fresh git clone, as well as steps to run the tests with a gas report.* 

*Note: Many wardens run Slither as a first pass for testing.  Please document any known errors with no workaround.* 



```bash
# # # # # # # # # # # # # # # # # # # # # #
#                                         #
#             |\_/|                       #
#             | O O                       #
#             |   <>              _       #
#             |  _/\------____ ((| |))    #
#             |               `--' |      #
#         ____|_       ___|   |___.'      #
#        /_/_____/____/_______|           #
#    _   _                           _    #
#   | | | |                         | |   #
#   | |_| |  ___   _   _  _ __    __| |   #
#   |  _  | / _ \ | | | || '_ \  / _` |   #
#   | | | || (_) || |_| || | | || (_| |   #
#   \_| |_/ \___/  \__,_||_| |_| \__,_|   #
#                                         #
# # # # # # # # # # # # # # # # # # # # # #
```


## Summary

---

### Low Risk Issues
|Id|Title|Instances|
|:--:|:-------|:--:|
|[[L-01]](#l-01-execution-at-deadlines-should-be-allowed)| Execution at deadlines should be allowed | 3 |
|[[L-02]](#l-02-avoid-double-casting)| Avoid double casting | 4 |
|[[L-03]](#l-03-unsafe-downcast-may-overflow)| Unsafe downcast may overflow | 14 |
|[[L-04]](#l-04-unsafe-uint-to-int-conversion)| Unsafe `uint` to `int` conversion | 2 |
|[[L-05]](#l-05-missing-limits-when-setting-minmax-amounts)| Missing limits when setting min/max amounts | 1 |
|[[L-06]](#l-06-external-calls-in-an-unbounded-loop-can-result-in-a-dos)| External calls in an unbounded loop can result in a DoS | 1 |
|[[L-07]](#l-07-solidity-version-0820-may-not-work-on-other-chains-due-to-push0)| Solidity version `0.8.20` may not work on other chains due to `PUSH0` | 3 |
|[[L-08]](#l-08-loss-of-precision-on-division)| Loss of precision on division | 7 |
|[[L-09]](#l-09-using-zero-as-a-parameter)| Using zero as a parameter | 6 |
|[[L-10]](#l-10-gas-griefingtheft-is-possible-on-an-unsafe-external-call)| Gas griefing/theft is possible on an unsafe external call | 2 |
|[[L-11]](#l-11-no-access-control-on-receivepayable-fallback)| No access control on `receive/payable fallback` | 1 |
|[[L-12]](#l-12-missing-checks-for-address0-in-constructorinitializers)| Missing checks for `address(0)` in constructor/initializers | 4 |

Total: 48 instances over 12 issues.

### Non Critical Issues
|Id|Title|Instances|
|:--:|:-------|:--:|
|[[NC-01]](#nc-01-custom-error-should-be-used-rather-than-requireassert)| Custom `error` should be used rather than `require`/`assert` | 40 |
|[[NC-02]](#nc-02-missing-events-in-sensitive-functions)| Missing events in sensitive functions | 1 |
|[[NC-03]](#nc-03-setters-should-prevent-re-setting-the-same-value)| Setters should prevent re-setting the same value | 1 |
|[[NC-04]](#nc-04-unused-named-return)| Unused named `return` | 1 |
|[[NC-05]](#nc-05-unused-event-definition)| Unused `event` definition | 1 |
|[[NC-06]](#nc-06-unused-state-variables)| Unused state variables | 1 |
|[[NC-07]](#nc-07-unusedempty-receivefallback)| Unused/empty `receive`/`fallback` | 1 |
|[[NC-08]](#nc-08-enum-values-should-be-used-in-place-of-constant-array-indexes)| Enum values should be used in place of constant array indexes | 1 |
|[[NC-09]](#nc-09-variable-initialization-with-default-value)| Variable initialization with default value | 15 |
|[[NC-10]](#nc-10-duplicated-requireif-statements-should-be-refactored)| Duplicated `require/if` statements should be refactored | 4 |
|[[NC-11]](#nc-11-public-functions-not-called-internally)| Public functions not called internally | 5 |
|[[NC-12]](#nc-12-large-multiples-of-ten-should-use-scientific-notation)| Large multiples of ten should use scientific notation | 5 |
|[[NC-13]](#nc-13-use-of-exponentiation-instead-of-scientific-notation)| Use of exponentiation instead of scientific notation | 2 |
|[[NC-14]](#nc-14-use-transfer-libraries-instead-of-low-level-calls)| Use transfer libraries instead of low level calls | 2 |
|[[NC-15]](#nc-15-use-of-non-named-numeric-constants)| Use of non-named numeric constants | 12 |
|[[NC-16]](#nc-16-complex-math-should-be-split-into-multiple-steps)| Complex math should be split into multiple steps | 6 |
|[[NC-17]](#nc-17-control-structures-do-not-comply-with-best-practices)| Control structures do not comply with best practices | 6 |
|[[NC-18]](#nc-18-variable-names-dont-follow-the-solidity-naming-convention)| Variable names don't follow the Solidity naming convention | 36 |
|[[NC-19]](#nc-19-use-a-single-file-for-system-wide-constants)| Use a single file for system wide constants | 3 |
|[[NC-20]](#nc-20-some-events-are-never-emitted)| Some events are never emitted | 1 |
|[[NC-21]](#nc-21-old-solidity-version)| Old Solidity version | 3 |
|[[NC-22]](#nc-22-use-of-floating-pragma)| Use of floating pragma | 3 |
|[[NC-23]](#nc-23-contract-functions-should-use-an-interface)| Contract functions should use an `interface` | 28 |
|[[NC-24]](#nc-24-requirerevert-without-any-message)| `require`/`revert` without any message | 2 |
|[[NC-25]](#nc-25-else-block-is-not-required)| `else` block is not required | 3 |
|[[NC-26]](#nc-26-consider-activating-via-ir-for-deploying)| Consider activating `via-ir` for deploying | 1 |
|[[NC-27]](#nc-27-event-is-missing-msgsender-parameter)| Event is missing `msg.sender` parameter | 1 |
|[[NC-28]](#nc-28-unresolved-todos-in-comments)| Unresolved `TODOs` in comments | 2 |
|[[NC-29]](#nc-29-use-a-modifier-instead-of-require-to-check-for-msgsender)| Use a `modifier` instead of `require` to check for `msg.sender` | 1 |
|[[NC-30]](#nc-30-constants-in-comparisons-should-appear-on-the-left-side)| Constants in comparisons should appear on the left side | 10 |
|[[NC-31]](#nc-31-consider-using-delete-instead-of-assigning-zerofalse-to-clear-values)| Consider using `delete` instead of assigning zero/false to clear values | 14 |
|[[NC-32]](#nc-32-use-a-ternary-statement-instead-of-ifelse-when-appropriate)| Use a ternary statement instead of `if`/`else` when appropriate | 1 |
|[[NC-33]](#nc-33-layout-order-does-not-comply-with-best-practices)| Layout order does not comply with best practices | 2 |
|[[NC-34]](#nc-34-function-visibility-order-does-not-comply-with-best-practices)| Function visibility order does not comply with best practices | 5 |
|[[NC-35]](#nc-35-long-functions-should-be-refactored-into-multiple-functions)| Long functions should be refactored into multiple functions | 2 |
|[[NC-36]](#nc-36-lines-are-too-long)| Lines are too long | 18 |
|[[NC-37]](#nc-37-some-variables-have-a-implicit-default-visibility)| Some variables have a implicit default visibility | 3 |
|[[NC-38]](#nc-38-avoid-the-use-of-sensitive-terms)| Avoid the use of sensitive terms | 9 |
|[[NC-39]](#nc-39-typos-in-comments)| Typos in comments | 7 |
|[[NC-40]](#nc-40-contracts-should-have-full-test-coverage)| Contracts should have full test coverage | 1 |
|[[NC-41]](#nc-41-large-or-complicated-code-bases-should-implement-invariant-tests)| Large or complicated code bases should implement invariant tests | 1 |
|[[NC-42]](#nc-42-inconsistent-spacing-in-comments)| Inconsistent spacing in comments | 7 |
|[[NC-43]](#nc-43-state-variables-should-include-comments)| State variables should include comments | 21 |
|[[NC-44]](#nc-44-complex-functions-should-have-explicit-comments)| Complex functions should have explicit comments | 1 |
|[[NC-45]](#nc-45-missing-natspec-param)| Missing NatSpec `@param` | 8 |
|[[NC-46]](#nc-46-incomplete-natspec-return)| Incomplete NatSpec `@return` | 8 |

Total: 306 instances over 46 issues.

### Gas Optimizations
|Id|Title|Instances|Gas Saved|
|:--:|:-------|:--:|-----:|
|[[G-01]](#g-01-custom-errors-cost-less-than-requireassert)| Custom `error`s cost less than `require`/`assert` | 40 | 1,160 |
|[[G-02]](#g-02-state-variables-can-be-modified-to-fit-in-fewer-storage-slots)| State variables can be modified to fit in fewer storage slots | 1 | 20,000 |
|[[G-03]](#g-03-structs-can-be-packed-into-fewer-storage-slots)| Structs can be packed into fewer storage slots | 1 | 20,000 |
|[[G-04]](#g-04-multiple-mappings-that-share-an-id-can-be-combined-into-a-single-mapping-of-id--struct)| Multiple `mapping`s that share an ID can be combined into a single `mapping` of ID / `struct` | 4 | 181,722 |
|[[G-05]](#g-05-use-of-memory-instead-of-storage-for-structarray-state-variables)| Use of `memory` instead of `storage` for struct/array state variables | 6 | 42,000 |
|[[G-06]](#g-06-state-variables-access-within-a-loop)| State variables access within a loop | 1 | 530 |
|[[G-07]](#g-07-unused-non-constant-state-variables-waste-gas)| Unused non-constant state variables waste gas | 1 | - |
|[[G-08]](#g-08-state-variables-only-set-in-the-constructor-should-be-declared-immutable)| State variables only set in the constructor should be declared `immutable` | 6 | 120,000 |
|[[G-09]](#g-09-use-at-least-solidity-version-0819-to-gain-some-gas-boost)| Use at least Solidity version `0.8.19` to gain some gas boost | 3 | - |
|[[G-10]](#g-10-use-of-memory-instead-of-calldata-for-immutable-arguments)| Use of `memory` instead of `calldata` for immutable arguments | 3 | 1,048 |
|[[G-11]](#g-11-avoid-updating-storage-when-the-value-hasnt-changed)| Avoid updating storage when the value hasn't changed | 1 | 700 |
|[[G-12]](#g-12-cache-multiple-accesses-of-a-mappingarray)| Cache multiple accesses of a mapping/array | 16 | 1,050 |
|[[G-13]](#g-13-using-private-for-constants-saves-gas)| Using `private` for constants saves gas | 6 | 50,436 |
|[[G-14]](#g-14-using-bool-for-storage-incurs-overhead)| Using `bool` for storage incurs overhead | 2 | 34,200 |
|[[G-15]](#g-15-functions-that-revert-when-called-by-normal-users-can-be-payable)| Functions that revert when called by normal users can be `payable` | 5 | 105 |
|[[G-16]](#g-16-caching-global-variables-is-more-expensive-than-using-the-actual-variable)| Caching global variables is more expensive than using the actual variable | 2 | 24 |
|[[G-17]](#g-17-add-unchecked-blocks-for-subtractions-where-the-operands-cannot-underflow)| Add `unchecked` blocks for subtractions where the operands cannot underflow | 7 | 595 |
|[[G-18]](#g-18-empty-blocks-should-be-removed-or-emit-something)| Empty blocks should be removed or emit something | 1 | 4,006 |
|[[G-19]](#g-19-redundant-event-fields-can-be-removed)| Redundant `event` fields can be removed | 6 | 2,148 |
|[[G-20]](#g-20-using-pre-instead-of-post-incrementsdecrements)| Using pre instead of post increments/decrements | 4 | 20 |
|[[G-21]](#g-21-low-level-call-can-be-optimized-with-assembly)| Low level `call` can be optimized with assembly | 2 | 496 |
|[[G-22]](#g-22-use-assembly-to-emit-an-event)| Use assembly to emit an `event` | 8 | 304 |
|[[G-23]](#g-23--costs-less-gas-than)| `>=`/`<=` costs less gas than `>`/`<` | 57 | 171 |
|[[G-24]](#g-24-internalprivate-functions-only-called-once-can-be-inlined-to-save-gas)| `internal/private` functions only called once can be inlined to save gas | 1 | 20 |
|[[G-25]](#g-25-unused-named-return-variables-without-optimizer-waste-gas)| Unused named return variables without optimizer waste gas | 1 | 9 |
|[[G-26]](#g-26-function-names-can-be-optimized)| Function names can be optimized | 3 | 66 |
|[[G-27]](#g-27-using-delete-instead-of-setting-mappingstruct-to-0-saves-gas)| Using `delete` instead of setting mapping/struct to 0 saves gas | 13 | 65 |
|[[G-28]](#g-28-multiplicationdivision-by-two-should-use-bit-shifting)| Multiplication/division by two should use bit shifting | 2 | 40 |
|[[G-29]](#g-29-x--y-is-more-expensive-than-x--x--y-for-state-variables)| `x += y` is more expensive than `x = x + y` for state variables | 2 | 226 |
|[[G-30]](#g-30-constructors-can-be-marked-payable)| Constructors can be marked `payable` | 3 | 63 |
|[[G-31]](#g-31-long-revert-strings)| Long revert strings | 1 | 18 |
|[[G-32]](#g-32-splitting-require-statements-that-use--saves-gas)| Splitting `require` statements that use `&&` saves gas | 2 | 6 |
|[[G-33]](#g-33-lack-of-unchecked-in-loops)| Lack of `unchecked` in loops | 6 | 360 |
|[[G-34]](#g-34-uint-comparison-with-zero-can-be-cheaper)| `uint` comparison with zero can be cheaper | 17 | 68 |

Total: 234 instances over 34 issues with an estimate of **481,656 gas** saved.

## Low Risk Issues

---

### [L-01] Execution at deadlines should be allowed

The condition may be wrong in these cases, as when `block.timestamp` is equal to the compared `>` or `<` variable these blocks will not be executed.

*There are 3 instances of this issue.*


```solidity
File: src/VotingEscrow.sol

294: 		        require(locked_.end > block.timestamp, "Lock expired");

315: 		            require(locked_.end > block.timestamp, "Delegatee lock expired");

383: 		        require(toLocked.end > block.timestamp, "Delegatee lock expired");
```
[[294](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L294), [315](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L315), [383](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L383)]


---

### [L-02] Avoid double casting

Consider refactoring the following code, as double casting may introduce unexpected truncations and/or rounding issues.

Furthermore, double type casting can make the code less readable and harder to maintain, increasing the likelihood of errors and misunderstandings during development and debugging.

*There are 21 instances of this issue.*

<details>
<summary>Expand findings</summary>


```solidity
File: src/GaugeController.sol

// @audit uint256 -> uint128
222: 		        uint256 slope = uint256(uint128(slope_));
```
[[222](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L222)]



```solidity
File: src/VotingEscrow.sol

// @audit int128 -> int256
130: 		                userOldPoint.slope = _oldLocked.delegated / int128(int256(LOCKTIME));

// @audit int128 -> int256
131: 		                userOldPoint.bias = userOldPoint.slope * int128(int256(_oldLocked.end - block.timestamp));

// @audit int128 -> int256
134: 		                userNewPoint.slope = _newLocked.delegated / int128(int256(LOCKTIME));

// @audit int128 -> int256
135: 		                userNewPoint.bias = userNewPoint.slope * int128(int256(_newLocked.end - block.timestamp));

// @audit int128 -> int256
195: 		            int128 biasDelta = lastPoint.slope * int128(int256((iterativeTime - lastCheckpoint)));

// @audit int128 -> int256
276: 		        locked_.amount += int128(int256(_value));

// @audit int128 -> int256
278: 		        locked_.delegated += int128(int256(_value));

// @audit int128 -> int256
300: 		        newLocked.amount += int128(int256(_value));

// @audit int128 -> int256
305: 		            newLocked.delegated += int128(int256(_value));

// @audit int128 -> int256
317: 		            newLocked.delegated += int128(int256(_value));

// @audit uint256 -> uint128
333: 		        uint256 amountToSend = uint256(uint128(locked_.amount));

// @audit int128 -> int256
337: 		        newLocked.delegated -= int128(int256(amountToSend));

// @audit uint256 -> int256
399: 		            emit Deposit(addr, uint256(int256(value)), newLocked.end, action, block.timestamp);

// @audit uint256 -> int256
402: 		            emit Withdraw(addr, uint256(int256(value)), action, block.timestamp);

// @audit int128 -> int256
479: 		        lastPoint.bias = lastPoint.bias - (lastPoint.slope * int128(int256(block.timestamp - lastPoint.ts)));

// @audit uint256 -> uint128
483: 		        return uint256(uint128(lastPoint.bias));

// @audit int128 -> int256
521: 		        upoint.bias = upoint.bias - (upoint.slope * int128(int256(blockTime - upoint.ts)));

// @audit uint256 -> uint128
523: 		            return uint256(uint128(upoint.bias));

// @audit int128 -> int256
550: 		            lastPoint.bias = lastPoint.bias - (lastPoint.slope * int128(int256(iterativeTime - lastPoint.ts)));

// @audit uint256 -> uint128
561: 		        return uint256(uint128(lastPoint.bias));
```
[[130](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L130), [131](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L131), [134](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L134), [135](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L135), [195](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L195), [276](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L276), [278](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L278), [300](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L300), [305](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L305), [317](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L317), [333](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L333), [337](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L337), [399](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L399), [402](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L402), [479](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L479), [483](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L483), [521](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L521), [523](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L523), [550](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L550), [561](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L561)]

</details>

---

### [L-03] Unsafe downcast may overflow

When a type is downcast to a smaller type, the higher order bits are discarded, resulting in the application of a modulo operation to the original value.

If the downcasted value is large enough, this may result in an overflow that will not revert.

*There are 4 instances of this issue.*


```solidity
File: src/VotingEscrow.sol

// @audit int128 -> int256
195:                    int128 biasDelta = lastPoint.slope * int128(int256((iterativeTime - lastCheckpoint)));

// @audit int128 -> int256
479:                lastPoint.bias = lastPoint.bias - (lastPoint.slope * int128(int256(block.timestamp - lastPoint.ts)));

// @audit int128 -> int256
521:                upoint.bias = upoint.bias - (upoint.slope * int128(int256(blockTime - upoint.ts)));

// @audit int128 -> int256
550:                    lastPoint.bias = lastPoint.bias - (lastPoint.slope * int128(int256(iterativeTime - lastPoint.ts)));

```
[[195](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L195), [479](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L479), [521](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L521), [550](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L550)]


---

### [L-04] Unsafe `uint` to `int` conversion

The `int` type in Solidity uses the [two's complement system](https://en.wikipedia.org/wiki/Two%27s_complement), so it is possible to accidentally overflow a very large `uint` to an `int`, even if they share the same number of bytes (e.g. a `uint256 number > type(uint128).max` will overflow a `int256` cast).

Consider using the [SafeCast](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeCast.sol) library to prevent any overflows.

*There are 2 instances of this issue.*


```solidity
File: src/VotingEscrow.sol

// @audit uint256 (iterativeTime - lastCheckpoint) downcasted to int256
195: 		            int128 biasDelta = lastPoint.slope * int128(int256((iterativeTime - lastCheckpoint)));

// @audit uint256 iterativeTime - lastPoint.ts downcasted to int256
550: 		            lastPoint.bias = lastPoint.bias - (lastPoint.slope * int128(int256(iterativeTime - lastPoint.ts)));
```
[[195](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L195), [550](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L550)]


---

### [L-05] Missing limits when setting min/max amounts

There are some missing limits in these functions, and this could lead to unexpected scenarios. Consider adding a min/max limit for the following values, when appropriate.

*There is 1 instance of this issue.*


```solidity
File: src/LendingLedger.sol

// @audit missing both checks -> _fromEpoch, _toEpoch, _amountPerEpoch
188: 		    function setRewards(
189: 		        uint256 _fromEpoch,
190: 		        uint256 _toEpoch,
191: 		        uint248 _amountPerEpoch
```
[[188-191](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L188-L191)]


---

### [L-06] External calls in an unbounded loop can result in a DoS

Consider limiting the number of iterations in loops that make external calls, as just a single one of them failing will result in a revert.

*There is 1 instance of this issue.*


```solidity
File: src/LendingLedger.sol

// @audit gauge_relative_weight_write (173)
168: 		            for (uint256 i = claimStart; i <= claimEnd; i += WEEK) {
```
[[168](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L168)]


---

### [L-07] Solidity version `0.8.20` may not work on other chains due to `PUSH0`

In Solidity `0.8.20`'s compiler, the default target EVM version has been changed to Shanghai. This version introduces a new op code called `PUSH0`.

However, not all Layer 2 solutions have implemented this op code yet, leading to deployment failures on these chains. To overcome this problem, it is recommended to utilize an earlier EVM version.

*There are 3 instances of this issue.*


```solidity
File: src/GaugeController.sol

2: 		pragma solidity ^0.8.16;
```
[[2](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L2)]



```solidity
File: src/LendingLedger.sol

2: 		pragma solidity ^0.8.16;
```
[[2](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L2)]



```solidity
File: src/VotingEscrow.sol

2: 		pragma solidity ^0.8.16;
```
[[2](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L2)]


---

### [L-08] Loss of precision on division

Solidity doesn't support fractions, so divisions by large numbers could result in the quotient being zero.

To avoid this, it's recommended to require a minimum numerator amount to ensure that it is always greater than the denominator.

*There are 7 instances of this issue.*


```solidity
File: src/LendingLedger.sol

174: 		                cantoToSend += (marketWeight * userBalance * ri.amount) / (1e18 * marketBalance); // (marketWeight / 1e18) * (userBalance / marketBalance) * ri.amount;
```
[[174](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L174)]



```solidity
File: src/VotingEscrow.sol

178: 		            blockSlope = (MULTIPLIER * (block.number - lastPoint.blk)) / (block.timestamp - lastPoint.ts);

208: 		            lastPoint.blk = initialLastPoint.blk + (blockSlope * (iterativeTime - initialLastPoint.ts)) / MULTIPLIER;

425: 		        return (_t / WEEK) * WEEK;

518: 		            blockTime = blockTime + ((dTime * (_blockNumber - point0.blk)) / dBlock);

589: 		                dTime = ((_blockNumber - point.blk) * (pointNext.ts - point.ts)) / (pointNext.blk - point.blk);

592: 		            dTime = ((_blockNumber - point.blk) * (block.timestamp - point.ts)) / (block.number - point.blk);
```
[[178](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L178), [208](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L208), [425](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L425), [518](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L518), [589](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L589), [592](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L592)]


---

### [L-09] Using zero as a parameter

Taking zero as a valid argument without checks can lead to severe security issues in some cases.

If using a zero argument is mandatory, consider using descriptive constants or an enum instead of passing zero directly on function calls, as that might be error-prone, to fully describe the caller's intention.

*There are 6 instances of this issue.*


```solidity
File: src/GaugeController.sol

130: 		        _change_gauge_weight(_gauge, 0);
```
[[130](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L130)]



```solidity
File: src/VotingEscrow.sol

73: 		        pointHistory[0] = Point({bias: int128(0), slope: int128(0), ts: block.timestamp, blk: block.number});

73: 		        pointHistory[0] = Point({bias: int128(0), slope: int128(0), ts: block.timestamp, blk: block.number});

166: 		        Point memory lastPoint = Point({bias: 0, slope: 0, ts: block.timestamp, blk: block.number});

175: 		        Point memory initialLastPoint = Point({bias: 0, slope: 0, ts: lastPoint.ts, blk: lastPoint.blk});

281: 		        _checkpoint(msg.sender, LockedBalance(0, 0, 0, address(0)), locked_);
```
[[73](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L73), [73](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L73), [166](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L166), [175](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L175), [281](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L281)]


---

### [L-10] Gas griefing/theft is possible on an unsafe external call

A low-level call will copy any amount of bytes to local memory. When bytes are copied from returndata to memory, the memory expansion cost is paid.

This means that when using a standard solidity call, the callee can 'returnbomb' the caller, imposing an arbitrary gas cost.

Because this gas is paid by the caller and in the caller's context, it can cause the caller to run out of gas and halt execution.

Consider replacing all unsafe `call` with `excessivelySafeCall` from this [repository](https://github.com/nomad-xyz/ExcessivelySafeCall).

*There are 2 instances of this issue.*


```solidity
File: src/LendingLedger.sol

179: 		            (bool success, ) = msg.sender.call{value: cantoToSend}("");
```
[[179](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L179)]



```solidity
File: src/VotingEscrow.sol

346: 		        (bool success, ) = msg.sender.call{value: amountToSend}("");
```
[[346](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L346)]


---

### [L-11] No access control on `receive/payable fallback`

Users may send ETH by mistake to these contracts. As there is no access control on these functions, the funds will be permanently lost.

*There is 1 instance of this issue.*


```solidity
File: src/LendingLedger.sol

209: 		    receive() external payable {}
```
[[209](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L209)]


---

### [L-12] Missing checks for `address(0)` in constructor/initializers

Check for zero-address to avoid the risk of setting `address(0)` for state variables when deploying.

*There are 4 instances of this issue.*


```solidity
File: src/GaugeController.sol

58: 		        votingEscrow = VotingEscrow(_votingEscrow);

59: 		        governance = _governance; // TODO: Maybe change to Oracle
```
[[58](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L58), [59](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L59)]



```solidity
File: src/LendingLedger.sol

47: 		        gaugeController = GaugeController(_gaugeController);

48: 		        governance = _governance; // TODO: Maybe change to Oracle
```
[[47](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L47), [48](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L48)]


---

## Non Critical Issues

---

### [NC-01] Custom `error` should be used rather than `require`/`assert`

Custom errors are available from solidity version 0.8.4. Custom errors are more easily processed in try-catch blocks, and are easier to re-use and maintain.

*There are 40 instances of this issue.*

<details>
<summary>Expand findings</summary>


```solidity
File: src/GaugeController.sol

51: 		        require(msg.sender == governance);

119: 		        require(!isValidGauge[_gauge], "Gauge already exists");

128: 		        require(isValidGauge[_gauge], "Invalid gauge address");

212: 		        require(_user_weight >= 0 && _user_weight <= 10_000, "Invalid user weight");

213: 		        require(isValidGauge[_gauge_addr], "Invalid gauge address");

221: 		        require(slope_ >= 0, "Invalid slope");

225: 		        require(lock_end > next_time, "Lock expires too soon");

241: 		        require(power_used >= 0 && power_used <= 10_000, "Used too much power");
```
[[51](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L51), [119](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L119), [128](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L128), [212](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L212), [213](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L213), [221](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L221), [225](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L225), [241](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L241)]



```solidity
File: src/LendingLedger.sol

37: 		        require(_timestamp % WEEK == 0 || _timestamp == type(uint256).max, "Invalid timestamp");

42: 		        require(msg.sender == governance);

110: 		        require(lendingMarketTotalBalanceEpoch[_market] > 0, "No deposits for this market");

122: 		        require(lendingMarketBalancesEpoch[_market][_lender] > 0, "No deposits for this lender in this market");

131: 		        require(lendingMarketWhitelist[lendingMarket], "Market not whitelisted");

136: 		        require(updatedLenderBalance >= 0, "Lender balance underflow"); // Sanity check performed here, but the market should ensure that this never happens

141: 		        require(updatedMarketBalance >= 0, "Market balance underflow"); // Sanity check performed here, but the market should ensure that this never happens

159: 		        require(userLastClaimed > 0, "No deposits for this user");

172: 		                require(ri.set, "Reward not set yet"); // Can only claim for epochs where rewards are set, even if it is set to 0

180: 		            require(success, "Failed to send CANTO");

195: 		            require(!ri.set, "Rewards already set");

205: 		        require(lendingMarketWhitelist[_market] != _isWhiteListed, "No change");
```
[[37](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L37), [42](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L42), [110](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L110), [122](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L122), [131](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L131), [136](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L136), [141](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L141), [159](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L159), [172](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L172), [180](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L180), [195](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L195), [205](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L205)]



```solidity
File: src/VotingEscrow.sol

272: 		        require(_value > 0, "Only non zero amount");

273: 		        require(msg.value == _value, "Invalid value");

274: 		        require(locked_.amount == 0, "Lock exists");

291: 		        require(_value > 0, "Only non zero amount");

292: 		        require(msg.value == _value, "Invalid value");

293: 		        require(locked_.amount > 0, "No lock");

294: 		        require(locked_.end > block.timestamp, "Lock expired");

314: 		            require(locked_.amount > 0, "Delegatee has no lock");

315: 		            require(locked_.end > block.timestamp, "Delegatee lock expired");

329: 		        require(locked_.amount > 0, "No lock");

330: 		        require(locked_.end <= block.timestamp, "Lock not expired");

331: 		        require(locked_.delegatee == msg.sender, "Lock delegated");

347: 		        require(success, "Failed to send CANTO");

359: 		        require(locked_.amount > 0, "No lock");

360: 		        require(locked_.delegatee != _addr, "Already delegated");

382: 		        require(toLocked.amount > 0, "Delegatee has no lock");

383: 		        require(toLocked.end > block.timestamp, "Delegatee lock expired");

384: 		        require(toLocked.end >= fromLocked.end, "Only delegate to longer lock");

488: 		        require(_blockNumber <= block.number, "Only past block number");

573: 		        require(_blockNumber <= block.number, "Only past block number");
```
[[272](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L272), [273](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L273), [274](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L274), [291](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L291), [292](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L292), [293](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L293), [294](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L294), [314](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L314), [315](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L315), [329](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L329), [330](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L330), [331](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L331), [347](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L347), [359](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L359), [360](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L360), [382](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L382), [383](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L383), [384](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L384), [488](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L488), [573](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L573)]

</details>

---

### [NC-02] Missing events in sensitive functions

Events should be emitted when sensitive changes are made to the contracts, but some functions lack them.

*There is 1 instance of this issue.*


```solidity
File: src/LendingLedger.sol

188: 		    function setRewards(
189: 		        uint256 _fromEpoch,
190: 		        uint256 _toEpoch,
191: 		        uint248 _amountPerEpoch
192: 		    ) external is_valid_epoch(_fromEpoch) is_valid_epoch(_toEpoch) onlyGovernance {
193: 		        for (uint256 i = _fromEpoch; i <= _toEpoch; i += WEEK) {
194: 		            RewardInformation storage ri = rewardInformation[i];
195: 		            require(!ri.set, "Rewards already set");
196: 		            ri.set = true;
197: 		            ri.amount = _amountPerEpoch;
198: 		        }
199: 		    }
```
[[188-199](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L188-L199)]


---

### [NC-03] Setters should prevent re-setting the same value

Not only is wasteful in terms of gas, but this is especially problematic when an event is emitted and the old and new values set are the same, as listeners might not expect this kind of scenario.

*There is 1 instance of this issue.*


```solidity
File: src/GaugeController.sol

// @audit time_sum
188: 		    function _change_gauge_weight(address _gauge, uint256 _weight) internal {
```
[[188](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L188)]


---

### [NC-04] Unused named `return`

Declaring named returns, but not using them, is confusing to the reader. Consider either completely removing them (by declaring just the type without a name), or remove the return statement and do a variable assignment.

This would improve the readability of the code, and it may also help reduce regressions during future code refactors.

*There is 1 instance of this issue.*


```solidity
File: src/VotingEscrow.sol

98: 		            int128 bias,

105: 		            return (0, 0, 0);

108: 		        return (point.bias, point.slope, point.ts);
```
[[98](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L98)]


---

### [NC-05] Unused `event` definition

The following events are never used, consider to remove them.

*There is 1 instance of this issue.*


```solidity
File: src/VotingEscrow.sol

23: 		    event Unlock();
```
[[23](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L23)]


---

### [NC-06] Unused state variables

Consider removing any unusued state variable to improve the readability of the codebase.

*There is 1 instance of this issue.*


```solidity
File: src/VotingEscrow.sol

28: 		    uint256 public decimals = 18;
```
[[28](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L28)]


---

### [NC-07] Unused/empty `receive`/`fallback`

If the intention is for the ETH to be used, the function should call another function, otherwise it should revert (e.g. `require(msg.sender == address(weth))`)

*There is 1 instance of this issue.*


```solidity
File: src/LendingLedger.sol

209: 		    receive() external payable {}
```
[[209](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L209)]


---

### [NC-08] Enum values should be used in place of constant array indexes

Consider using an enum instead of hardcoding an index access to make the code easier to understand.

*There is 1 instance of this issue.*


```solidity
File: src/VotingEscrow.sol

73: 		        pointHistory[0] = Point({bias: int128(0), slope: int128(0), ts: block.timestamp, blk: block.number});
```
[[73](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L73)]


---

### [NC-09] Variable initialization with default value

It's not necessary to initialize a variable with its default value, and it's actually worse in gas terms as it adds an overhead.

*There are 15 instances of this issue.*


```solidity
File: src/GaugeController.sol

227: 		        uint256 old_dt = 0;
```
[[227](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L227)]



```solidity
File: src/VotingEscrow.sol

122: 		        int128 oldSlopeDelta = 0;

123: 		        int128 newSlopeDelta = 0;

176: 		        uint256 blockSlope = 0; // dblock/dt

185: 		        for (uint256 i = 0; i < 255; i++) {

189: 		            int128 dSlope = 0;

433: 		        uint256 min = 0;

436: 		        for (uint256 i = 0; i < 128; i++) {

452: 		        uint256 min = 0;

454: 		        for (uint256 i = 0; i < 128; i++) {

505: 		        uint256 dBlock = 0;

506: 		        uint256 dTime = 0;

538: 		        for (uint256 i = 0; i < 255; i++) {

540: 		            int128 dSlope = 0;

585: 		        uint256 dTime = 0;
```
[[122](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L122), [123](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L123), [176](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L176), [185](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L185), [189](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L189), [433](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L433), [436](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L436), [452](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L452), [454](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L454), [505](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L505), [506](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L506), [538](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L538), [540](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L540), [585](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L585)]


---

### [NC-10] Duplicated `require/if` statements should be refactored

These statements should be refactored to a separate function, as there are multiple parts of the codebase that use the same logic, to improve the code readability and reduce code duplication.

*There are 4 instances of this issue.*


```solidity
File: src/VotingEscrow.sol

// @audit this require is duplicated on line 291
272: 		        require(_value > 0, "Only non zero amount");

// @audit this require is duplicated on line 292
273: 		        require(msg.value == _value, "Invalid value");

// @audit this require is duplicated on line 329, 359
293: 		        require(locked_.amount > 0, "No lock");

// @audit this require is duplicated on line 573
488: 		        require(_blockNumber <= block.number, "Only past block number");
```
[[272](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L272), [273](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L273), [293](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L293), [488](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L488)]


---

### [NC-11] Public functions not called internally

Those functions should be declared as `external` instead of `public`, as they are never called internally by the contract.

Contracts are allowed to override their parents' functions and change the visibility from external to public.

*There are 5 instances of this issue.*


```solidity
File: src/GaugeController.sol

204: 		    function change_gauge_weight(address _gauge, uint256 _weight) public onlyGovernance {
```
[[204](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L204)]



```solidity
File: src/VotingEscrow.sol

473: 		    function balanceOf(address _owner) public view returns (uint256) {

487: 		    function balanceOfAt(address _owner, uint256 _blockNumber) public view returns (uint256) {

565: 		    function totalSupply() public view returns (uint256) {

572: 		    function totalSupplyAt(uint256 _blockNumber) public view returns (uint256) {
```
[[473](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L473), [487](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L487), [565](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L565), [572](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L572)]


---

### [NC-12] Large multiples of ten should use scientific notation

Use a scientific notation rather than decimal literals (e.g. `1e6` instead of `1000000`), for better code readability.

*There are 5 instances of this issue.*


```solidity
File: src/GaugeController.sol

// @audit 10_000 -> 1e4
212: 		        require(_user_weight >= 0 && _user_weight <= 10_000, "Invalid user weight");

// @audit 10_000 -> 1e4
231: 		            slope: (slope * _user_weight) / 10_000,

// @audit 10_000 -> 1e4
241: 		        require(power_used >= 0 && power_used <= 10_000, "Used too much power");
```
[[212](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L212), [231](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L231), [241](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L241)]



```solidity
File: src/VotingEscrow.sol

// @audit 1000000000000000000 -> 1e18
37: 		    Point[1000000000000000000] public pointHistory; // 1e9 * userPointHistory-length, so sufficient for 1e9 users

// @audit 1000000000 -> 1e9
38: 		    mapping(address => Point[1000000000]) public userPointHistory;
```
[[37](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L37), [38](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L38)]


---

### [NC-13] Use of exponentiation instead of scientific notation

Use a scientific notation rather than exponentiation (e.g. `1e18` instead of `10**18`): although the compiler is capable of optimizing it, it is considered good coding practice to utilize idioms that don't rely on compiler optimization, whenever possible.

*There are 2 instances of this issue.*


```solidity
File: src/GaugeController.sol

17: 		    uint256 public constant MULTIPLIER = 10**18;
```
[[17](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L17)]



```solidity
File: src/VotingEscrow.sol

33: 		    uint256 public constant MULTIPLIER = 10**18;
```
[[33](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L33)]


---

### [NC-14] Use transfer libraries instead of low level calls

Consider using `SafeTransferLib.safeTransferETH` or `Address.sendValue` for clearer semantic meaning instead of using a low level `call`.

*There are 2 instances of this issue.*


```solidity
File: src/LendingLedger.sol

179: 		            (bool success, ) = msg.sender.call{value: cantoToSend}("");
```
[[179](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L179)]



```solidity
File: src/VotingEscrow.sol

346: 		        (bool success, ) = msg.sender.call{value: amountToSend}("");
```
[[346](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L346)]


---

### [NC-15] Use of non-named numeric constants

Constants should be defined instead of using magic numbers.

*There are 12 instances of this issue.*


```solidity
File: src/GaugeController.sol

17: 		    uint256 public constant MULTIPLIER = 10**18;

69: 		        for (uint256 i; i < 500; ++i) {

95: 		            for (uint256 i; i < 500; ++i) {

212: 		        require(_user_weight >= 0 && _user_weight <= 10_000, "Invalid user weight");

231: 		            slope: (slope * _user_weight) / 10_000,

241: 		        require(power_used >= 0 && power_used <= 10_000, "Used too much power");
```
[[17](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L17), [69](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L69), [95](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L95), [212](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L212), [231](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L231), [241](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L241)]



```solidity
File: src/LendingLedger.sol

174: 		                cantoToSend += (marketWeight * userBalance * ri.amount) / (1e18 * marketBalance); // (marketWeight / 1e18) * (userBalance / marketBalance) * ri.amount;
```
[[174](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L174)]



```solidity
File: src/VotingEscrow.sol

33: 		    uint256 public constant MULTIPLIER = 10**18;

185: 		        for (uint256 i = 0; i < 255; i++) {

436: 		        for (uint256 i = 0; i < 128; i++) {

454: 		        for (uint256 i = 0; i < 128; i++) {

538: 		        for (uint256 i = 0; i < 255; i++) {
```
[[33](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L33), [185](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L185), [436](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L436), [454](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L454), [538](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L538)]


---

### [NC-16] Complex math should be split into multiple steps

Consider splitting long arithmetic calculations into multiple steps to improve the code readability.

*There are 6 instances of this issue.*


```solidity
File: src/LendingLedger.sol

174: 		                cantoToSend += (marketWeight * userBalance * ri.amount) / (1e18 * marketBalance); // (marketWeight / 1e18) * (userBalance / marketBalance) * ri.amount;
```
[[174](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L174)]



```solidity
File: src/VotingEscrow.sol

178: 		            blockSlope = (MULTIPLIER * (block.number - lastPoint.blk)) / (block.timestamp - lastPoint.ts);

208: 		            lastPoint.blk = initialLastPoint.blk + (blockSlope * (iterativeTime - initialLastPoint.ts)) / MULTIPLIER;

518: 		            blockTime = blockTime + ((dTime * (_blockNumber - point0.blk)) / dBlock);

589: 		                dTime = ((_blockNumber - point.blk) * (pointNext.ts - point.ts)) / (pointNext.blk - point.blk);

592: 		            dTime = ((_blockNumber - point.blk) * (block.timestamp - point.ts)) / (block.number - point.blk);
```
[[178](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L178), [208](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L208), [518](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L518), [589](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L589), [592](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L592)]


---

### [NC-17] Control structures do not comply with best practices

This is a [best practice](https://docs.soliditylang.org/en/latest/style-guide.html#control-structures) that should be followed. 

*There are 6 instances of this issue.*


```solidity
File: src/GaugeController.sol

70: 		            if (t > block.timestamp) break;

82: 		            if (t > block.timestamp) time_sum = t;

96: 		                if (t > block.timestamp) break;

108: 		                if (t > block.timestamp) time_weight[_gauge_addr] = t;

228: 		        if (old_slope.end > next_time) old_dt = old_slope.end - next_time;
```
[[70](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L70), [82](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L82), [96](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L96), [108](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L108), [228](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L228)]



```solidity
File: src/VotingEscrow.sol

437: 		            if (min >= max) break;
```
[[437](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L437)]


---

### [NC-18] Variable names don't follow the Solidity naming convention

Use `mixedCase` for local and state variables that are not constants, and add a trailing underscore for internal variables. [Documentation](https://docs.soliditylang.org/en/latest/style-guide.html#local-and-state-variable-names)

*There are 36 instances of this issue.*

<details>
<summary>Expand findings</summary>


```solidity
File: src/GaugeController.sol

20: 		    event NewGauge(address indexed gauge_address);

21: 		    event GaugeRemoved(address indexed gauge_address);

27: 		    mapping(address => mapping(address => VotedSlope)) public vote_user_slopes;

28: 		    mapping(address => uint256) public vote_user_power;

29: 		    mapping(address => mapping(address => uint256)) public last_user_vote;

31: 		    mapping(address => mapping(uint256 => Point)) public points_weight;

32: 		    mapping(address => mapping(uint256 => uint256)) public changes_weight;

33: 		    mapping(address => uint256) time_weight;

35: 		    mapping(uint256 => Point) points_sum;

36: 		    mapping(uint256 => uint256) changes_sum;

37: 		    uint256 public time_sum;

60: 		        uint256 last_epoch = (block.timestamp / WEEK) * WEEK;

72: 		            uint256 d_bias = pt.slope * WEEK;

75: 		                uint256 d_slope = changes_sum[t];

98: 		                uint256 d_bias = pt.slope * WEEK;

101: 		                    uint256 d_slope = changes_weight[_gauge_addr][t];

154: 		        uint256 total_weight = points_sum[t].bias;

156: 		            uint256 gauge_weight = points_weight[_gauge][t].bias;

189: 		        uint256 old_gauge_weight = _get_weight(_gauge);

190: 		        uint256 old_sum = _get_sum();

191: 		        uint256 next_time = ((block.timestamp + WEEK) / WEEK) * WEEK;

196: 		        uint256 new_sum = old_sum + _weight - old_gauge_weight;

223: 		        uint256 lock_end = ve.lockEnd(msg.sender);

224: 		        uint256 next_time = ((block.timestamp + WEEK) / WEEK) * WEEK;

226: 		        VotedSlope memory old_slope = vote_user_slopes[msg.sender][_gauge_addr];

227: 		        uint256 old_dt = 0;

229: 		        uint256 old_bias = old_slope.slope * old_dt;

230: 		        VotedSlope memory new_slope = VotedSlope({

235: 		        uint256 new_dt = lock_end - next_time;

236: 		        uint256 new_bias = new_slope.slope * new_dt;

239: 		        uint256 power_used = vote_user_power[msg.sender];

247: 		        uint256 old_weight_bias = _get_weight(_gauge_addr);

248: 		        uint256 old_weight_slope = points_weight[_gauge_addr][next_time].slope;

249: 		        uint256 old_sum_bias = _get_sum();

250: 		        uint256 old_sum_slope = points_sum[next_time].slope;
```
[[20](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L20), [21](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L21), [27](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L27), [28](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L28), [29](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L29), [31](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L31), [32](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L32), [33](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L33), [35](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L35), [36](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L36), [37](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L37), [60](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L60), [72](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L72), [75](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L75), [98](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L98), [101](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L101), [154](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L154), [156](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L156), [189](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L189), [190](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L190), [191](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L191), [196](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L196), [223](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L223), [224](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L224), [226](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L226), [227](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L227), [229](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L229), [230](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L230), [235](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L235), [236](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L236), [239](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L239), [247](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L247), [248](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L248), [249](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L249), [250](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L250)]



```solidity
File: src/VotingEscrow.sol

269: 		        uint256 unlock_time = _floorToWeek(block.timestamp + LOCKTIME); // Locktime is rounded down to weeks
```
[[269](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L269)]

</details>

---

### [NC-19] Use a single file for system wide constants

Consider grouping all the system constants under a single file. This finding shows only the first constant for each file, for brevity.

*There are 3 instances of this issue.*


```solidity
File: src/GaugeController.sol

16: 		    uint256 public constant WEEK = 7 days;
```
[[16](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L16)]



```solidity
File: src/LendingLedger.sol

10: 		    uint256 public constant WEEK = 7 days;
```
[[10](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L10)]



```solidity
File: src/VotingEscrow.sol

31: 		    uint256 public constant WEEK = 7 days;
```
[[31](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L31)]


---

### [NC-20] Some events are never emitted

The following events are never emitted, consider to remove them.

*There is 1 instance of this issue.*


```solidity
File: src/VotingEscrow.sol

23: 		    event Unlock();
```
[[23](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L23)]


---

### [NC-21] Old Solidity version

Use a more recent version of Solidity: the latest version is 0.8.21, but it's safer to use at least the version 0.8.19 to get the latest bugfixes and features when deploying on L2.

*There are 3 instances of this issue.*


```solidity
File: src/GaugeController.sol

2: 		pragma solidity ^0.8.16;
```
[[2](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L2)]



```solidity
File: src/LendingLedger.sol

2: 		pragma solidity ^0.8.16;
```
[[2](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L2)]



```solidity
File: src/VotingEscrow.sol

2: 		pragma solidity ^0.8.16;
```
[[2](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L2)]


---

### [NC-22] Use of floating pragma

Locking the pragma helps avoid accidental deploys with an outdated compiler version that may introduce bugs and unexpected vulnerabilities.

Floating pragma is meant to be used for libraries and contracts that have external users and need backward compatibility.

*There are 3 instances of this issue.*


```solidity
File: src/GaugeController.sol

2: 		pragma solidity ^0.8.16;
```
[[2](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L2)]



```solidity
File: src/LendingLedger.sol

2: 		pragma solidity ^0.8.16;
```
[[2](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L2)]



```solidity
File: src/VotingEscrow.sol

2: 		pragma solidity ^0.8.16;
```
[[2](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L2)]


---

### [NC-23] Contract functions should use an `interface`

All `external`/`public` functions should extend an `interface`. This is useful to make sure that the whole API is extracted.

*There are 28 instances of this issue.*

<details>
<summary>Expand findings</summary>


```solidity
File: src/GaugeController.sol

118: 		    function add_gauge(address _gauge) external onlyGovernance {

127: 		    function remove_gauge(address _gauge) external onlyGovernance {

135: 		    function checkpoint() external {

141: 		    function checkpoint_gauge(address _gauge) external {

169: 		    function gauge_relative_weight(address _gauge, uint256 _time) external view returns (uint256) {

179: 		    function gauge_relative_weight_write(address _gauge, uint256 _time) external returns (uint256) {

204: 		    function change_gauge_weight(address _gauge, uint256 _weight) public onlyGovernance {

211: 		    function vote_for_gauge_weights(address _gauge_addr, uint256 _user_weight) external {

283: 		    function get_gauge_weight(address _gauge) external view returns (uint256) {

289: 		    function get_total_weight() external view returns (uint256) {
```
[[118](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L118), [127](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L127), [135](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L135), [141](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L141), [169](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L169), [179](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L179), [204](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L204), [211](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L211), [283](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L283), [289](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L289)]



```solidity
File: src/LendingLedger.sol

106: 		    function checkpoint_market(address _market, uint256 _forwardTimestampLimit)

117: 		    function checkpoint_lender(

129: 		    function sync_ledger(address _lender, int256 _delta) external {

152: 		    function claim(

188: 		    function setRewards(

204: 		    function whiteListLendingMarket(address _market, bool _isWhiteListed) external onlyGovernance {

209: 		    receive() external payable {}
```
[[106](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L106), [117](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L117), [129](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L129), [152](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L152), [188](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L188), [204](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L204), [209](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L209)]



```solidity
File: src/VotingEscrow.sol

85: 		    function lockEnd(address _addr) external view returns (uint256) {

94: 		    function getLastUserPoint(address _addr)

262: 		    function checkpoint() external {

268: 		    function createLock(uint256 _value) external payable nonReentrant {

288: 		    function increaseAmount(uint256 _value) external payable nonReentrant {

326: 		    function withdraw() external nonReentrant {

356: 		    function delegate(address _addr) external nonReentrant {

473: 		    function balanceOf(address _owner) public view returns (uint256) {

487: 		    function balanceOfAt(address _owner, uint256 _blockNumber) public view returns (uint256) {

565: 		    function totalSupply() public view returns (uint256) {

572: 		    function totalSupplyAt(uint256 _blockNumber) public view returns (uint256) {
```
[[85](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L85), [94](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L94), [262](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L262), [268](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L268), [288](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L288), [326](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L326), [356](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L356), [473](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L473), [487](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L487), [565](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L565), [572](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L572)]

</details>

---

### [NC-24] `require`/`revert` without any message

If a transaction reverts, it can be confusing to debug if there aren't any messages. Add a descriptive message to all `require`/`revert` statements.

*There are 2 instances of this issue.*


```solidity
File: src/GaugeController.sol

51: 		        require(msg.sender == governance);
```
[[51](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L51)]



```solidity
File: src/LendingLedger.sol

42: 		        require(msg.sender == governance);
```
[[42](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L42)]


---

### [NC-25] `else` block is not required

Consider moving the logic outside the `else` block, and then removing it (it's not required, as the function is returning a value). There will be one less level of nesting, which will improve the quality of the codebase.

*There are 3 instances of this issue.*


```solidity
File: src/GaugeController.sol

111: 		        } else {
112: 		            return 0;
113: 		        }

158: 		        } else {
159: 		            return 0;
160: 		        }
```
[[111-113](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L111-L113), [158-160](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L158-L160)]



```solidity
File: src/VotingEscrow.sol

524: 		        } else {
525: 		            return 0;
526: 		        }
```
[[524-526](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L524-L526)]


---

### [NC-26] Consider activating `via-ir` for deploying

The IR-based code generator was developed to make code generation more performant by enabling optimization passes that can be applied across functions.

It is possible to activate the IR-based code generator through the command line by using the flag `--via-ir` or by including the option `{"viaIR": true}`.

Keep in mind that compiling with this option may take longer. However, you can simply test it before deploying your code. If you find that it provides better performance, you can add the `--via-ir` flag to your deploy command.



---

### [NC-27] Event is missing `msg.sender` parameter

The following functions are missing some parameters when emitting an event: when dealing with a source address which uses the value of `msg.sender`, the `msg.sender` value should be specified in every event.

Otherwise, a contract or web page listening to events cannot react to connected users: basically, those events cannot be used properly.

*There is 1 instance of this issue.*


```solidity
File: src/VotingEscrow.sol

320: 		            emit Deposit(delegatee, _value, newLocked.end, LockAction.DELEGATE, block.timestamp);
```
[[320](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L320)]


---

### [NC-28] Unresolved `TODOs` in comments

Some features might not be properly implemented, as there are commented `TODOs`. Review the comments to ensure that everything is implemented, and remove them before deploying.

*There are 2 instances of this issue.*


```solidity
File: src/GaugeController.sol

59: 		        governance = _governance; // TODO: Maybe change to Oracle
```
[[59](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L59)]



```solidity
File: src/LendingLedger.sol

48: 		        governance = _governance; // TODO: Maybe change to Oracle
```
[[48](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L48)]


---

### [NC-29] Use a `modifier` instead of `require` to check for `msg.sender`

If some functions are only allowed to be called by some specific users, consider using a `modifier` instead of checking with a `require` statement, especially if this check is done in multiple functions.

*There is 1 instance of this issue.*


```solidity
File: src/VotingEscrow.sol

331: 		        require(locked_.delegatee == msg.sender, "Lock delegated");
```
[[331](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L331)]


---

### [NC-30] Constants in comparisons should appear on the left side

This is useful to avoid doing some [typo bugs](https://www.moserware.com/2008/01/constants-on-left-are-better-but-this.html).

*There are 10 instances of this issue.*


```solidity
File: src/LendingLedger.sol

37: 		        require(_timestamp % WEEK == 0 || _timestamp == type(uint256).max, "Invalid timestamp");

64: 		        if (lastUserUpdateEpoch == 0) {

87: 		        if (lastMarketUpdateEpoch == 0) {
```
[[37](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L37), [64](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L64), [87](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L87)]



```solidity
File: src/VotingEscrow.sol

104: 		        if (uepoch == 0) {

142: 		            if (uEpoch == 0) {

157: 		            if (_newLocked.end != 0) {

274: 		        require(locked_.amount == 0, "Lock exists");

475: 		        if (epoch == 0) {

492: 		        if (userEpoch == 0) {

517: 		        if (dBlock != 0) {
```
[[104](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L104), [142](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L142), [157](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L157), [274](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L274), [475](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L475), [492](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L492), [517](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L517)]


---

### [NC-31] Consider using `delete` instead of assigning zero/false to clear values

The `delete` keyword more closely matches the semantics of what is being done, and draws more attention to the changing of state, which may lead to a more thorough audit of its associated logic.

*There are 14 instances of this issue.*


```solidity
File: src/GaugeController.sol

78: 		                pt.bias = 0;

79: 		                pt.slope = 0;

104: 		                    pt.bias = 0;

105: 		                    pt.slope = 0;

129: 		        isValidGauge[_gauge] = false;
```
[[78](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L78), [79](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L79), [104](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L104), [105](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L105), [129](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L129)]



```solidity
File: src/VotingEscrow.sol

200: 		                lastPoint.bias = 0;

204: 		                lastPoint.slope = 0;

229: 		                lastPoint.slope = 0;

232: 		                lastPoint.bias = 0;

335: 		        newLocked.amount = 0;

336: 		        newLocked.end = 0;

340: 		        newLocked.delegated = 0;

481: 		            lastPoint.bias = 0;

559: 		            lastPoint.bias = 0;
```
[[200](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L200), [204](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L204), [229](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L229), [232](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L232), [335](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L335), [336](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L336), [340](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L340), [481](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L481), [559](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L559)]


---

### [NC-32] Use a ternary statement instead of `if`/`else` when appropriate

The `if`/`else` statement can be written in a shorthand way using the ternary operator, as it increases readability and reduces the number of lines of code.

*There is 1 instance of this issue.*


```solidity
File: src/VotingEscrow.sol

522: 		        if (upoint.bias >= 0) {
523: 		            return uint256(uint128(upoint.bias));
524: 		        } else {
525: 		            return 0;
526: 		        }
```
[[522-526](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L522-L526)]


---

### [NC-33] Layout order does not comply with best practices

This is a [best practice](https://docs.soliditylang.org/en/latest/style-guide.html#order-of-layout) that should be followed.

Inside each contract, library or interface, use the following order:

1. Type declarations
2. State variables
3. Events
4. Errors
5. Modifiers
6. Functions

*There are 2 instances of this issue.*


```solidity
File: src/GaugeController.sol

// @audit event GaugeRemoved found on line 21
24: 		    VotingEscrow public votingEscrow;
```
[[24](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L24)]



```solidity
File: src/VotingEscrow.sol

// @audit event Unlock found on line 23
26: 		    string public name;
```
[[26](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L26)]


---

### [NC-34] Function visibility order does not comply with best practices

This is a [best practice](https://docs.soliditylang.org/en/latest/style-guide.html#order-of-functions) that should be followed.

Functions should be grouped according to their visibility and ordered:

1. constructor
2. receive function (if exists)
3. fallback function (if exists)
4. external
5. public
6. internal
7. private

Within a grouping, place the view and pure functions last.

*There are 5 instances of this issue.*


```solidity
File: src/GaugeController.sol

// @audit _gauge_relative_weight on line 152, which is private
289: 		    function get_total_weight() external view returns (uint256) {

// @audit _gauge_relative_weight on line 152, which is private
204: 		    function change_gauge_weight(address _gauge, uint256 _weight) public onlyGovernance {
```
[[289](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L289), [204](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L204)]



```solidity
File: src/LendingLedger.sol

// @audit _checkpoint_market on line 83, which is private
204: 		    function whiteListLendingMarket(address _market, bool _isWhiteListed) external onlyGovernance {

// @audit _checkpoint_market on line 83, which is private
209: 		    receive() external payable {}
```
[[204](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L204), [209](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L209)]



```solidity
File: src/VotingEscrow.sol

// @audit _supplyAt on line 533, which is internal
572: 		    function totalSupplyAt(uint256 _blockNumber) public view returns (uint256) {
```
[[572](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L572)]


---

### [NC-35] Long functions should be refactored into multiple functions

Consider splitting long functions into multiple, smaller functions to improve the code readability.

*There are 2 instances of this issue.*


```solidity
File: src/GaugeController.sol

211: 		    function vote_for_gauge_weights(address _gauge_addr, uint256 _user_weight) external {
```
[[211](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L211)]



```solidity
File: src/VotingEscrow.sol

115: 		    function _checkpoint(
```
[[115](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L115)]


---

### [NC-36] Lines are too long

Maximum suggested line length is 120 characters according to the [documentation](https://docs.soliditylang.org/en/latest/style-guide.html#maximum-line-length).

*There are 18 instances of this issue.*


```solidity
File: src/GaugeController.sol

10: 		/// @notice Allows users to vote on distribution of CANTO that the contract receives from governance. Modifications from Curve:
```
[[10](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L10)]



```solidity
File: src/LendingLedger.sol

17: 		    mapping(address => mapping(address => mapping(uint256 => uint256))) public lendingMarketBalances; // cNote balances of users within the lending markets, indexed by epoch

19: 		    mapping(address => mapping(address => uint256)) public lendingMarketBalancesEpoch; // Epoch when the last update happened

21: 		    mapping(address => mapping(uint256 => uint256)) public lendingMarketTotalBalance; // Total balance locked within the market, i.e. sum of lendingMarketBalances for all

26: 		    mapping(address => mapping(address => uint256)) public userClaimedEpoch; // Until which epoch a user has claimed for a particular market (exclusive this value)

54: 		    /// @param _forwardTimestampLimit Until which epoch (provided as timestamp) should the update be applied. If it is higher than the current epoch timestamp, this will be used.

82: 		    /// @param _forwardTimestampLimit Until which epoch (provided as timestamp) should the update be applied. If it is higher than the current epoch timestamp, this will be used.

103: 		    ///     Never needs to be called explicitly, but could be used to ensure the checkpoints within the other functions consume less gas (because they need to forward less epochs)

105: 		    /// @param _forwardTimestampLimit Until which epoch (provided as timestamp) should the update be applied. If it is higher than the current epoch timestamp, this will be used.

116: 		    /// @param _forwardTimestampLimit Until which epoch (provided as timestamp) should the update be applied. If it is higher than the current epoch timestamp, this will be used.

136: 		        require(updatedLenderBalance >= 0, "Lender balance underflow"); // Sanity check performed here, but the market should ensure that this never happens

141: 		        require(updatedMarketBalance >= 0, "Market balance underflow"); // Sanity check performed here, but the market should ensure that this never happens

145: 		    /// @notice Claim the CANTO for a given market. Can only be performed for prior (i.e. finished) epochs, not the current one

147: 		    /// @param _claimFromTimestamp From which epoch (provided as timestmap) should the claim start. Usually, this parameter should be set to 0, in which case the epoch of the last claim will be used.

148: 		    ///     However, it can be useful to skip certain epochs, e.g. when the balance was very low or 0 (after everything was withdrawn) and the gas usage should be reduced.

150: 		    /// @param _claimUpToTimestamp Until which epoch (provided as timestamp) should the claim be applied. If it is higher than the timestamp of the previous epoch, this will be used

174: 		                cantoToSend += (marketWeight * userBalance * ri.amount) / (1e18 * marketBalance); // (marketWeight / 1e18) * (userBalance / marketBalance) * ri.amount;
```
[[17](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L17), [19](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L19), [21](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L21), [26](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L26), [54](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L54), [82](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L82), [103](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L103), [105](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L105), [116](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L116), [136](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L136), [141](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L141), [145](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L145), [147](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L147), [148](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L148), [150](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L150), [174](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L174)]



```solidity
File: src/VotingEscrow.sol

10: 		///           (see https://github.com/mstable/mStable-contracts/blob/master/contracts/governance/IncentivisedVotingLockup.sol)
```
[[10](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L10)]


---

### [NC-37] Some variables have a implicit default visibility

Consider always adding an explicit visibility modifier for variables, as the default is `internal`.

*There are 3 instances of this issue.*


```solidity
File: src/GaugeController.sol

33: 		    mapping(address => uint256) time_weight;

35: 		    mapping(uint256 => Point) points_sum;

36: 		    mapping(uint256 => uint256) changes_sum;
```
[[33](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L33), [35](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L35), [36](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L36)]


---

### [NC-38] Avoid the use of sensitive terms

Use [alternative variants](https://www.zdnet.com/article/mysql-drops-master-slave-and-blacklist-whitelist-terminology/), e.g. allowlist/denylist instead of whitelist/blacklist.

*There are 9 instances of this issue.*


```solidity
File: src/GaugeController.sol

12: 		///         - Different whitelisting of gauge addresses because of removed types
```
[[12](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L12)]



```solidity
File: src/LendingLedger.sol

15: 		    mapping(address => bool) public lendingMarketWhitelist;

131: 		        require(lendingMarketWhitelist[lendingMarket], "Market not whitelisted");

201: 		    /// @notice Used by governance to whitelist a lending market

202: 		    /// @param _market Address of the market to whitelist

203: 		    /// @param _isWhiteListed Whether the market is whitelisted or not

204: 		    function whiteListLendingMarket(address _market, bool _isWhiteListed) external onlyGovernance {

205: 		        require(lendingMarketWhitelist[_market] != _isWhiteListed, "No change");

206: 		        lendingMarketWhitelist[_market] = _isWhiteListed;
```
[[15](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L15), [131](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L131), [201](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L201), [202](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L202), [203](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L203), [204](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L204), [205](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L205), [206](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L206)]


---

### [NC-39] Typos in comments

Avoid typos, and proper nouns should be capitalized.

*There are 7 instances of this issue.*


```solidity
File: src/GaugeController.sol

// @audit checkins
64: 		    /// @notice Fill historic gauge weights week-over-week for missed checkins and return the sum for the future week

// @audit checkins
87: 		    /// @notice Fill historic gauge weights week-over-week for missed checkins
```
[[64](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L64), [87](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L87)]



```solidity
File: src/LendingLedger.sol

// @audit timestmap
147: 		    /// @param _claimFromTimestamp From which epoch (provided as timestmap) should the claim start. Usually, this parameter should be set to 0, in which case the epoch of the last claim will be used.

// @audit ri
174: 		                cantoToSend += (marketWeight * userBalance * ri.amount) / (1e18 * marketBalance); // (marketWeight / 1e18) * (userBalance / marketBalance) * ri.amount;
```
[[147](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L147), [174](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L174)]



```solidity
File: src/VotingEscrow.sol

// @audit dblock
176: 		        uint256 blockSlope = 0; // dblock/dt

// @audit binarysearch
428: 		    // @dev Uses binarysearch to find the most recent point history preceeding block

// @audit binarysearch
448: 		    // @dev Uses binarysearch to find the most recent user point history preceeding block
```
[[176](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L176), [428](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L428), [448](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L448)]


---

### [NC-40] Contracts should have full test coverage

A 100% test coverage is not foolproof, but it helps immensely in reducing the amount of bugs that may occur.



---

### [NC-41] Large or complicated code bases should implement invariant tests

This includes: large code bases, or code with lots of inline-assembly, complicated math, or complicated interactions between multiple contracts.

Invariant fuzzers such as Echidna require the test writer to come up with invariants which should not be violated under any circumstances, and the fuzzer tests various inputs and function calls to ensure that the invariants always hold.

Even code with 100% code coverage can still have bugs due to the order of the operations a user performs, and invariant fuzzers may help significantly.



---

### [NC-42] Inconsistent spacing in comments

Some lines use `// x` and some use `//x`. The instances below point out the usages that don't follow the majority, within each file.

*There are 7 instances of this issue.*


```solidity
File: src/VotingEscrow.sol

8: 		///           (see https://github.com/curvefi/curve-dao-contracts/blob/master/contracts/VotingEscrow.vy)

10: 		///           (see https://github.com/mstable/mStable-contracts/blob/master/contracts/governance/IncentivisedVotingLockup.sol)

11: 		///         FIAT DAO (AGPL) - https://github.com/code-423n4/2022-08-fiatdao/blob/main/contracts/VotingEscrow.sol

176: 		        uint256 blockSlope = 0; // dblock/dt

181: 		        // But that's ok b/c we know the block in such case

389: 		    // Delegates from/to lock and voting power

406: 		            // Only if lock (from lock) hasn't been withdrawn/quitted
```
[[8](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L8), [10](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L10), [11](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L11), [176](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L176), [181](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L181), [389](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L389), [406](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L406)]


---

### [NC-43] State variables should include comments

Consider adding some comments on critical state variables to explain what they are supposed to do: this will help for future code reviews.

*There are 21 instances of this issue.*

<details>
<summary>Expand findings</summary>


```solidity
File: src/GaugeController.sol

17: 		    uint256 public constant MULTIPLIER = 10**18;

25: 		    address public governance;

26: 		    mapping(address => bool) public isValidGauge;

27: 		    mapping(address => mapping(address => VotedSlope)) public vote_user_slopes;

28: 		    mapping(address => uint256) public vote_user_power;

29: 		    mapping(address => mapping(address => uint256)) public last_user_vote;

31: 		    mapping(address => mapping(uint256 => Point)) public points_weight;

32: 		    mapping(address => mapping(uint256 => uint256)) public changes_weight;

33: 		    mapping(address => uint256) time_weight;

35: 		    mapping(uint256 => Point) points_sum;

36: 		    mapping(uint256 => uint256) changes_sum;

37: 		    uint256 public time_sum;
```
[[17](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L17), [25](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L25), [26](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L26), [27](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L27), [28](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L28), [29](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L29), [31](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L31), [32](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L32), [33](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L33), [35](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L35), [36](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L36), [37](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L37)]



```solidity
File: src/LendingLedger.sol

14: 		    GaugeController public gaugeController;

32: 		    mapping(uint256 => RewardInformation) public rewardInformation;
```
[[14](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L14), [32](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L32)]



```solidity
File: src/VotingEscrow.sol

27: 		    string public symbol;

28: 		    uint256 public decimals = 18;

32: 		    uint256 public constant LOCKTIME = 1825 days;

33: 		    uint256 public constant MULTIPLIER = 10**18;

39: 		    mapping(address => uint256) public userPointEpoch;

40: 		    mapping(uint256 => int128) public slopeChanges;

41: 		    mapping(address => LockedBalance) public locked;
```
[[27](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L27), [28](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L28), [32](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L32), [33](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L33), [39](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L39), [40](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L40), [41](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L41)]

</details>

---

### [NC-44] Complex functions should have explicit comments

Large and/or complex functions should have more comments to better explain the purpose of each logic step.

*There is 1 instance of this issue.*


```solidity
File: src/VotingEscrow.sol

115: 		    function _checkpoint(
```
[[115](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L115)]


---

### [NC-45] Missing NatSpec `@param`

Some functions have an incomplete NatSpec: add a `@param` notation to describe the function parameters to improve the code documentation.

*There are 8 instances of this issue.*


```solidity
File: src/VotingEscrow.sol

// @audit missing _value
267: 		    // See IVotingEscrow for documentation
268: 		    function createLock(uint256 _value) external payable nonReentrant {

// @audit missing _value
286: 		    // See IVotingEscrow for documentation
287: 		    // @dev A lock is active until both lock.amount==0 and lock.end<=block.timestamp
288: 		    function increaseAmount(uint256 _value) external payable nonReentrant {

// @audit missing _addr
351: 		    /// ~~~~~~~~~~~~~~~~~~~~~~~~~~ ///
352: 		    ///         DELEGATION         ///
353: 		    /// ~~~~~~~~~~~~~~~~~~~~~~~~~~ ///
354: 		
355: 		    // See IVotingEscrow for documentation
356: 		    function delegate(address _addr) external nonReentrant {

// @audit missing addr, _locked, value, action
389: 		    // Delegates from/to lock and voting power
390: 		    function _delegate(

// @audit missing _locked
411: 		    // Creates a copy of a lock
412: 		    function _copyLock(LockedBalance memory _locked) internal pure returns (LockedBalance memory) {

// @audit missing _owner
468: 		    /// ~~~~~~~~~~~~~~~~~~~~~~~~~~ ///
469: 		    ///            GETTERS         ///
470: 		    /// ~~~~~~~~~~~~~~~~~~~~~~~~~~ ///
471: 		
472: 		    // See IVotingEscrow for documentation
473: 		    function balanceOf(address _owner) public view returns (uint256) {

// @audit missing _owner, _blockNumber
486: 		    // See IVotingEscrow for documentation
487: 		    function balanceOfAt(address _owner, uint256 _blockNumber) public view returns (uint256) {

// @audit missing _blockNumber
571: 		    // See IVotingEscrow for documentation
572: 		    function totalSupplyAt(uint256 _blockNumber) public view returns (uint256) {
```
[[267-268](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L267-L268), [286-288](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L286-L288), [351-356](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L351-L356), [389-390](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L389-L390), [411-412](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L411-L412), [468-473](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L468-L473), [486-487](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L486-L487), [571-572](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L571-L572)]


---

### [NC-46] Incomplete NatSpec `@return`

Some functions have an incomplete NatSpec: add a `@return` notation to describe the function return value to improve the code documentation.

*There are 8 instances of this issue.*


```solidity
File: src/VotingEscrow.sol

// @audit missing @return
411: 		    // Creates a copy of a lock
412: 		    function _copyLock(LockedBalance memory _locked) internal pure returns (LockedBalance memory) {

// @audit missing @return
422: 		    // @dev Floors a timestamp to the nearest weekly increment
423: 		    // @param _t Timestamp to floor
424: 		    function _floorToWeek(uint256 _t) internal pure returns (uint256) {

// @audit missing @return
428: 		    // @dev Uses binarysearch to find the most recent point history preceeding block
429: 		    // @param _block Find the most recent point history before this block
430: 		    // @param _maxEpoch Do not search pointHistories past this index
431: 		    function _findBlockEpoch(uint256 _block, uint256 _maxEpoch) internal view returns (uint256) {

// @audit missing @return
448: 		    // @dev Uses binarysearch to find the most recent user point history preceeding block
449: 		    // @param _addr User for which to search
450: 		    // @param _block Find the most recent point history before this block
451: 		    function _findUserBlockEpoch(address _addr, uint256 _block) internal view returns (uint256) {

// @audit missing @return
468: 		    /// ~~~~~~~~~~~~~~~~~~~~~~~~~~ ///
469: 		    ///            GETTERS         ///
470: 		    /// ~~~~~~~~~~~~~~~~~~~~~~~~~~ ///
471: 		
472: 		    // See IVotingEscrow for documentation
473: 		    function balanceOf(address _owner) public view returns (uint256) {

// @audit missing @return
486: 		    // See IVotingEscrow for documentation
487: 		    function balanceOfAt(address _owner, uint256 _blockNumber) public view returns (uint256) {

// @audit missing @return
564: 		    // See IVotingEscrow for documentation
565: 		    function totalSupply() public view returns (uint256) {

// @audit missing @return
571: 		    // See IVotingEscrow for documentation
572: 		    function totalSupplyAt(uint256 _blockNumber) public view returns (uint256) {
```
[[411-412](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L411-L412), [422-424](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L422-L424), [428-431](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L428-L431), [448-451](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L448-L451), [468-473](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L468-L473), [486-487](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L486-L487), [564-565](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L564-L565), [571-572](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L571-L572)]


---

## Gas Optimizations

---

### [G-01] Custom `error`s cost less than `require`/`assert`

Consider the use of a custom `error`, as it leads to a cheaper deploy cost and run time cost. The run time cost is only relevant when the revert condition is met.

*There are 40 instances of this issue.*

<details>
<summary>Expand findings</summary>


```solidity
File: src/GaugeController.sol

51: 		        require(msg.sender == governance);

119: 		        require(!isValidGauge[_gauge], "Gauge already exists");

128: 		        require(isValidGauge[_gauge], "Invalid gauge address");

212: 		        require(_user_weight >= 0 && _user_weight <= 10_000, "Invalid user weight");

213: 		        require(isValidGauge[_gauge_addr], "Invalid gauge address");

221: 		        require(slope_ >= 0, "Invalid slope");

225: 		        require(lock_end > next_time, "Lock expires too soon");

241: 		        require(power_used >= 0 && power_used <= 10_000, "Used too much power");
```
[[51](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L51), [119](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L119), [128](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L128), [212](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L212), [213](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L213), [221](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L221), [225](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L225), [241](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L241)]



```solidity
File: src/LendingLedger.sol

37: 		        require(_timestamp % WEEK == 0 || _timestamp == type(uint256).max, "Invalid timestamp");

42: 		        require(msg.sender == governance);

110: 		        require(lendingMarketTotalBalanceEpoch[_market] > 0, "No deposits for this market");

122: 		        require(lendingMarketBalancesEpoch[_market][_lender] > 0, "No deposits for this lender in this market");

131: 		        require(lendingMarketWhitelist[lendingMarket], "Market not whitelisted");

136: 		        require(updatedLenderBalance >= 0, "Lender balance underflow"); // Sanity check performed here, but the market should ensure that this never happens

141: 		        require(updatedMarketBalance >= 0, "Market balance underflow"); // Sanity check performed here, but the market should ensure that this never happens

159: 		        require(userLastClaimed > 0, "No deposits for this user");

172: 		                require(ri.set, "Reward not set yet"); // Can only claim for epochs where rewards are set, even if it is set to 0

180: 		            require(success, "Failed to send CANTO");

195: 		            require(!ri.set, "Rewards already set");

205: 		        require(lendingMarketWhitelist[_market] != _isWhiteListed, "No change");
```
[[37](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L37), [42](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L42), [110](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L110), [122](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L122), [131](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L131), [136](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L136), [141](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L141), [159](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L159), [172](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L172), [180](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L180), [195](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L195), [205](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L205)]



```solidity
File: src/VotingEscrow.sol

272: 		        require(_value > 0, "Only non zero amount");

273: 		        require(msg.value == _value, "Invalid value");

274: 		        require(locked_.amount == 0, "Lock exists");

291: 		        require(_value > 0, "Only non zero amount");

292: 		        require(msg.value == _value, "Invalid value");

293: 		        require(locked_.amount > 0, "No lock");

294: 		        require(locked_.end > block.timestamp, "Lock expired");

314: 		            require(locked_.amount > 0, "Delegatee has no lock");

315: 		            require(locked_.end > block.timestamp, "Delegatee lock expired");

329: 		        require(locked_.amount > 0, "No lock");

330: 		        require(locked_.end <= block.timestamp, "Lock not expired");

331: 		        require(locked_.delegatee == msg.sender, "Lock delegated");

347: 		        require(success, "Failed to send CANTO");

359: 		        require(locked_.amount > 0, "No lock");

360: 		        require(locked_.delegatee != _addr, "Already delegated");

382: 		        require(toLocked.amount > 0, "Delegatee has no lock");

383: 		        require(toLocked.end > block.timestamp, "Delegatee lock expired");

384: 		        require(toLocked.end >= fromLocked.end, "Only delegate to longer lock");

488: 		        require(_blockNumber <= block.number, "Only past block number");

573: 		        require(_blockNumber <= block.number, "Only past block number");
```
[[272](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L272), [273](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L273), [274](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L274), [291](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L291), [292](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L292), [293](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L293), [294](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L294), [314](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L314), [315](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L315), [329](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L329), [330](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L330), [331](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L331), [347](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L347), [359](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L359), [360](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L360), [382](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L382), [383](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L383), [384](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L384), [488](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L488), [573](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L573)]

</details>

---

### [G-02] State variables can be modified to fit in fewer storage slots

Some state variables can be safely modified, and as result, the contract will use fewer storage slots. Each slot saved can avoid an extra Gsset (**20000 gas**) for the first setting of the struct. Subsequent reads as well as writes have smaller gas savings.

*There is 1 instance of this issue.*


```solidity
File: src/GaugeController.sol

// @audit Supposing an already optimal order, this can save 1 storage slot (from 12 to 11) by modifying the following variables:
// @audit uint256 time_sum -> uint32 time_sum

// @audit Consider using the following order:
/*
  *	mapping(address => bool) isValidGauge (32)
  *	mapping(address => mapping(address => VotedSlope)) vote_user_slopes (32)
  *	mapping(address => uint256) vote_user_power (32)
  *	mapping(address => mapping(address => uint256)) last_user_vote (32)
  *	mapping(address => mapping(uint256 => Point)) points_weight (32)
  *	mapping(address => mapping(uint256 => uint256)) changes_weight (32)
  *	mapping(address => uint256) time_weight (32)
  *	mapping(uint256 => Point) points_sum (32)
  *	mapping(uint256 => uint256) changes_sum (32)
  *	VotingEscrow votingEscrow (20)
  *	uint32 time_sum (4)
  *	address governance (20)
*/
14: 		contract GaugeController {
```
[[14](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L14)]


---

### [G-03] Structs can be packed into fewer storage slots

Each slot saved can avoid an extra Gsset (**20000 gas**) for the first setting of the struct. Subsequent reads as well as writes have smaller gas savings.

*There is 1 instance of this issue.*


```solidity
File: src/VotingEscrow.sol

// @audit Can save 1 storage slot (from 4 to 3) 
// @audit Consider using the following order:
/*
  *	uint256 end (32)
  *	int128 amount (16)
  *	int128 delegated (16)
  *	address delegatee (20)
*/
50: 		    struct LockedBalance {
51: 		        int128 amount;
52: 		        uint256 end;
53: 		        int128 delegated;
54: 		        address delegatee;
55: 		    }
```
[[50-55](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L50-L55)]


---

### [G-04] Multiple `mapping`s that share an ID can be combined into a single `mapping` of ID / `struct`

This can avoid a Gsset (**20000 Gas**) per mapping combined. Reads and writes will also be cheaper when a function requires both values as they both can fit in the same storage slot.Finally, if both fields are accessed in the same function, this can save **~42 gas** per access due to not having to recalculate the key's `keccak256` hash (Gkeccak256 - **30 Gas**) and that calculation's associated stack operations.

*There are 4 instances of this issue.*


```solidity
File: src/GaugeController.sol

// @audit consider merging vote_user_slopes, vote_user_power, last_user_vote
27: 		    mapping(address => mapping(address => VotedSlope)) public vote_user_slopes;
28: 		    mapping(address => uint256) public vote_user_power;
29: 		    mapping(address => mapping(address => uint256)) public last_user_vote;

// @audit consider merging points_weight, changes_weight, time_weight
31: 		    mapping(address => mapping(uint256 => Point)) public points_weight;
32: 		    mapping(address => mapping(uint256 => uint256)) public changes_weight;
33: 		    mapping(address => uint256) time_weight;
```
[[27](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L27), [31](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L31)]



```solidity
File: src/LendingLedger.sol

// @audit consider merging lendingMarketWhitelist, lendingMarketBalances, lendingMarketBalancesEpoch, lendingMarketTotalBalance, lendingMarketTotalBalanceEpoch
15: 		    mapping(address => bool) public lendingMarketWhitelist;

17: 		    mapping(address => mapping(address => mapping(uint256 => uint256))) public lendingMarketBalances; // cNote balances of users within the lending markets, indexed by epoch

19: 		    mapping(address => mapping(address => uint256)) public lendingMarketBalancesEpoch; // Epoch when the last update happened

21: 		    mapping(address => mapping(uint256 => uint256)) public lendingMarketTotalBalance; // Total balance locked within the market, i.e. sum of lendingMarketBalances for all

23: 		    mapping(address => uint256) public lendingMarketTotalBalanceEpoch; // Epoch when the last update happened
```
[[15](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L15)]



```solidity
File: src/VotingEscrow.sol

// @audit consider merging userPointHistory, userPointEpoch
38: 		    mapping(address => Point[1000000000]) public userPointHistory;
39: 		    mapping(address => uint256) public userPointEpoch;
```
[[38](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L38)]


---

### [G-05] Use of `memory` instead of `storage` for struct/array state variables

When fetching data from `storage`, using the `memory` keyword to assign it to a variable reads all fields of the struct/array and incurs a Gcoldsload (**2100 gas**) for each field.

This can be avoided by declaring the variable with the `storage` keyword and caching the necessary fields in stack variables.

The `memory` keyword should only be used if the entire struct/array is being returned or passed to a function that requires `memory`, or if it is being read from another `memory` array/struct.

*There are 6 instances of this issue.*


```solidity
File: src/GaugeController.sol

68: 		        Point memory pt = points_sum[t];
```
[[68](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L68)]



```solidity
File: src/LendingLedger.sol

171: 		                RewardInformation memory ri = rewardInformation[i];
```
[[171](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L171)]



```solidity
File: src/VotingEscrow.sol

357: 		        LockedBalance memory locked_ = locked[msg.sender];

500: 		        Point memory point0 = pointHistory[epoch];

508: 		            Point memory point1 = pointHistory[epoch + 1];

587: 		            Point memory pointNext = pointHistory[targetEpoch + 1];
```
[[357](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L357), [500](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L500), [508](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L508), [587](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L587)]


---

### [G-06] State variables access within a loop

State variable reads and writes are more expensive than local variable reads and writes. Therefore, it is recommended to replace state variable reads and writes within loops with a local variable. Gas savings should be multiplied by the average loop length.

*There is 1 instance of this issue.*


```solidity
File: src/LendingLedger.sol

// @audit gaugeController
173: 		                uint256 marketWeight = gaugeController.gauge_relative_weight_write(_market, i); // Normalized to 1e18
```
[[173](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L173)]


---

### [G-07] Unused non-constant state variables waste gas

If the variable is assigned a non-zero value, saves Gsset (20000 gas). If it's assigned a zero value, saves Gsreset (2900 gas).

If the variable remains unassigned, there is no gas savings unless the variable is public, in which case the compiler-generated non-payable getter deployment cost is saved.

If the state variable is overriding an interface's public function, mark the variable as constant or immutable so that it does not use a storage slot.

*There is 1 instance of this issue.*


```solidity
File: src/VotingEscrow.sol

28: 		    uint256 public decimals = 18;
```
[[28](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L28)]


---

### [G-08] State variables only set in the constructor should be declared `immutable`

Accessing state variables within a function involves an SLOAD operation, but `immutable` variables can be accessed directly without the need of it, thus reducing gas costs. As these state variables are assigned only in the constructor, consider declaring them `immutable`.

*There are 6 instances of this issue.*


```solidity
File: src/GaugeController.sol

24: 		    VotingEscrow public votingEscrow;

25: 		    address public governance;
```
[[24](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L24), [25](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L25)]



```solidity
File: src/LendingLedger.sol

14: 		    GaugeController public gaugeController;

13: 		    address public governance;
```
[[14](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L14), [13](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L13)]



```solidity
File: src/VotingEscrow.sol

26: 		    string public name;

27: 		    string public symbol;
```
[[26](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L26), [27](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L27)]


---

### [G-09] Use at least Solidity version `0.8.19` to gain some gas boost

Upgrade to at least solidity version 0.8.19 to get additional gas savings. Check the [documentation](https://blog.soliditylang.org/2023/02/22/solidity-0.8.19-release-announcement/) for reference.

Some additional details:
> In earlier releases and in the default legacy code generation, when an internal library function or a free function accessed via a module was called only during contract creation, e.g. only in the constructor, a copy of the function still also occurred in the contract’s runtime bytecode.
>
>So a function pointer in creation code also refers to the offset of the function in runtime code, which requires the function to actually be present in runtime code.
>
>For direct calls to internal contract functions the full encoding of the function expression is bypassed by the compiler. However, this bypassing did not happen for internal library functions and for free functions called via modules, causing the undesirable behaviour that is now fixed in this release.

*There are 3 instances of this issue.*


```solidity
File: src/GaugeController.sol

2: 		pragma solidity ^0.8.16;
```
[[2](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L2)]



```solidity
File: src/LendingLedger.sol

2: 		pragma solidity ^0.8.16;
```
[[2](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L2)]



```solidity
File: src/VotingEscrow.sol

2: 		pragma solidity ^0.8.16;
```
[[2](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L2)]


---

### [G-10] Use of `memory` instead of `calldata` for immutable arguments

Consider refactoring the function arguments from `memory` to `calldata` when they are immutable, as `calldata` is cheaper.

*There are 3 instances of this issue.*


```solidity
File: src/VotingEscrow.sol

// @audit _oldLocked, _newLocked
115: 		    function _checkpoint(
116: 		        address _addr,
117: 		        LockedBalance memory _oldLocked,
118: 		        LockedBalance memory _newLocked

// @audit _locked
412: 		    function _copyLock(LockedBalance memory _locked) internal pure returns (LockedBalance memory) {

// @audit _point
533: 		    function _supplyAt(Point memory _point, uint256 _t) internal view returns (uint256) {
```
[[115-118](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L115-L118), [412](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L412), [533](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L533)]


---

### [G-11] Avoid updating storage when the value hasn't changed

If the old value is equal to the new value, not re-storing the value will avoid a Gsreset (**2900 gas**), potentially at the expense of a Gcoldsload (**2100 gas**) or a Gwarmaccess (**100 gas**)

*There is 1 instance of this issue.*


```solidity
File: src/GaugeController.sol

// @audit time_sum
188: 		    function _change_gauge_weight(address _gauge, uint256 _weight) internal {
```
[[188](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L188)]


---

### [G-12] Cache multiple accesses of a mapping/array

Consider using a local `storage` or `calldata` variable when accessing a mapping/array value multiple times.

This can be useful to avoid recalculating the mapping hash and/or the array offsets.

*There are 16 instances of this issue.*

<details>
<summary>Expand findings</summary>


```solidity
File: src/GaugeController.sol

// @audit points_weight on line 94
107: 		                points_weight[_gauge_addr][t] = pt;

// @audit points_weight[_gauge_addr] on lines 248, 252, 255
260: 		            points_weight[_gauge_addr][next_time].slope += new_slope.slope;

// @audit vote_user_slopes on line 226
274: 		        vote_user_slopes[msg.sender][_gauge_addr] = new_slope;

// @audit points_sum on lines 250, 253, 258
261: 		            points_sum[next_time].slope += new_slope.slope;

// @audit changes_weight on line 265
269: 		        changes_weight[_gauge_addr][new_slope.end] += new_slope.slope;
```
[[107](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L107), [260](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L260), [274](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L274), [261](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L261), [269](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L269)]



```solidity
File: src/LendingLedger.sol

// @audit lendingMarketBalances[_market] on lines 70, 70
72: 		                lendingMarketBalances[_market][_lender][i] = lastUserBalance;

// @audit lendingMarketBalancesEpoch on lines 62, 67
75: 		                lendingMarketBalancesEpoch[_market][_lender] = updateUntilEpoch;

// @audit lendingMarketTotalBalance on line 91
93: 		                lendingMarketTotalBalance[_market][i] = lastMarketBalance;

// @audit lendingMarketBalances[lendingMarket] on line 135
137: 		        lendingMarketBalances[lendingMarket][_lender][currEpoch] = uint256(updatedLenderBalance);

// @audit lendingMarketTotalBalance on line 140
142: 		        lendingMarketTotalBalance[lendingMarket][currEpoch] = uint256(updatedMarketBalance);

// @audit lendingMarketTotalBalance[_market] on lines 169, 169
170: 		                uint256 marketBalance = lendingMarketTotalBalance[_market][i];

// @audit userClaimedEpoch on line 158
176: 		            userClaimedEpoch[_market][lender] = claimEnd + WEEK;
```
[[72](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L72), [75](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L75), [93](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L93), [137](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L137), [142](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L142), [170](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L170), [176](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L176)]



```solidity
File: src/VotingEscrow.sol

// @audit userPointHistory on line 143
149: 		            userPointHistory[_addr][uEpoch + 1] = userNewPoint;

// @audit locked on lines 370, 373, 377
378: 		            toLocked = locked[_addr];

// @audit pointHistory on line 500
508: 		            Point memory point1 = pointHistory[epoch + 1];

// @audit pointHistory on line 578
587: 		            Point memory pointNext = pointHistory[targetEpoch + 1];
```
[[149](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L149), [378](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L378), [508](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L508), [587](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L587)]

</details>

---

### [G-13] Using `private` for constants saves gas

Saves deployment gas due to the compiler not having to create non-payable getter functions for deployment calldata, not having to store the bytes of the value outside of where it's used, and not adding another entry to the method ID table.

*There are 6 instances of this issue.*


```solidity
File: src/GaugeController.sol

16: 		    uint256 public constant WEEK = 7 days;

17: 		    uint256 public constant MULTIPLIER = 10**18;
```
[[16](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L16), [17](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L17)]



```solidity
File: src/LendingLedger.sol

10: 		    uint256 public constant WEEK = 7 days;
```
[[10](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L10)]



```solidity
File: src/VotingEscrow.sol

31: 		    uint256 public constant WEEK = 7 days;

32: 		    uint256 public constant LOCKTIME = 1825 days;

33: 		    uint256 public constant MULTIPLIER = 10**18;
```
[[31](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L31), [32](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L32), [33](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L33)]


---

### [G-14] Using `bool` for storage incurs overhead

Use `uint256(1)` and `uint256(2)` for `true`/`false` to avoid a Gwarmaccess (100 gas), and to avoid Gsset (20000 gas) when changing from `false` to `true`, after having been `true` in the past. See [source](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/58f635312aa21f947cae5f8578638a85aa2519f5/contracts/security/ReentrancyGuard.sol#L23-L27).

*There are 2 instances of this issue.*


```solidity
File: src/GaugeController.sol

26: 		    mapping(address => bool) public isValidGauge;
```
[[26](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L26)]



```solidity
File: src/LendingLedger.sol

15: 		    mapping(address => bool) public lendingMarketWhitelist;
```
[[15](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L15)]


---

### [G-15] Functions that revert when called by normal users can be `payable`

If a function modifier such as `onlyOwner` is used, the function will revert if a normal user tries to pay the function.

Marking the function as `payable` will lower the gas for legitimate callers, as the compiler will not include checks for whether a payment was provided.

The extra opcodes avoided are:

`CALLVALUE(2), DUP1(3), ISZERO(3), PUSH2(3), JUMPI(10), PUSH1(3), DUP1(3), REVERT(0), JUMPDEST(1), POP(2)`

which cost an average of about 21 gas per call to the function, in addition to the extra deployment cost.

*There are 5 instances of this issue.*


```solidity
File: src/GaugeController.sol

118: 		    function add_gauge(address _gauge) external onlyGovernance {

127: 		    function remove_gauge(address _gauge) external onlyGovernance {

204: 		    function change_gauge_weight(address _gauge, uint256 _weight) public onlyGovernance {
```
[[118](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L118), [127](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L127), [204](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L204)]



```solidity
File: src/LendingLedger.sol

188: 		    function setRewards(
189: 		        uint256 _fromEpoch,
190: 		        uint256 _toEpoch,
191: 		        uint248 _amountPerEpoch
192: 		    ) external is_valid_epoch(_fromEpoch) is_valid_epoch(_toEpoch) onlyGovernance {

204: 		    function whiteListLendingMarket(address _market, bool _isWhiteListed) external onlyGovernance {
```
[[188-192](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L188-L192), [204](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L204)]


---

### [G-16] Caching global variables is more expensive than using the actual variable

It's better to not cache global variables, as their direct usage is cheaper (e.g. `msg.sender`).

*There are 2 instances of this issue.*


```solidity
File: src/LendingLedger.sol

130: 		        address lendingMarket = msg.sender;

157: 		        address lender = msg.sender;
```
[[130](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L130), [157](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L157)]


---

### [G-17] Add `unchecked` blocks for subtractions where the operands cannot underflow

There are some checks to avoid an underflow, so it's safe to use `unchecked` to have some gas savings.

*There are 7 instances of this issue.*


```solidity
File: src/GaugeController.sol

// @audit check on line 228
228: 		        if (old_slope.end > next_time) old_dt = old_slope.end - next_time;

// @audit check on line 225
235: 		        uint256 new_dt = lock_end - next_time;
```
[[228](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L228), [235](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L235)]



```solidity
File: src/VotingEscrow.sol

// @audit check on line 129
131: 		                userOldPoint.bias = userOldPoint.slope * int128(int256(_oldLocked.end - block.timestamp));

// @audit check on line 133
135: 		                userNewPoint.bias = userNewPoint.slope * int128(int256(_newLocked.end - block.timestamp));

// @audit check on line 177
178: 		            blockSlope = (MULTIPLIER * (block.number - lastPoint.blk)) / (block.timestamp - lastPoint.ts);

// @audit check on line 581
589: 		                dTime = ((_blockNumber - point.blk) * (pointNext.ts - point.ts)) / (pointNext.blk - point.blk);

// @audit check on line 581
592: 		            dTime = ((_blockNumber - point.blk) * (block.timestamp - point.ts)) / (block.number - point.blk);
```
[[131](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L131), [135](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L135), [178](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L178), [589](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L589), [592](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L592)]


---

### [G-18] Empty blocks should be removed or emit something

Some functions don't have a body: consider commenting why, or add some logic. Otherwise, refactor the code and remove these functions.

*There is 1 instance of this issue.*


```solidity
File: src/LendingLedger.sol

209: 		    receive() external payable {}
```
[[209](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L209)]


---

### [G-19] Redundant `event` fields can be removed

Some parameters (`block.timestamp` and `block.number`) are added to event information by default so re-adding them wastes gas, as they are already included.

*There are 6 instances of this issue.*


```solidity
File: src/VotingEscrow.sol

283: 		        emit Deposit(msg.sender, _value, unlock_time, LockAction.CREATE, block.timestamp);

320: 		            emit Deposit(delegatee, _value, newLocked.end, LockAction.DELEGATE, block.timestamp);

322: 		        emit Deposit(msg.sender, _value, unlockTime, action, block.timestamp);

348: 		        emit Withdraw(msg.sender, amountToSend, LockAction.WITHDRAW, block.timestamp);

399: 		            emit Deposit(addr, uint256(int256(value)), newLocked.end, action, block.timestamp);

402: 		            emit Withdraw(addr, uint256(int256(value)), action, block.timestamp);
```
[[283](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L283), [320](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L320), [322](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L322), [348](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L348), [399](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L399), [402](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L402)]


---

### [G-20] Using pre instead of post increments/decrements

Pre increments/decrements (`++i/--i`) are cheaper than post increments/decrements (`i++/i--`): it saves 6 gas per expression.

*There are 4 instances of this issue.*


```solidity
File: src/VotingEscrow.sol

185: 		        for (uint256 i = 0; i < 255; i++) {

436: 		        for (uint256 i = 0; i < 128; i++) {

454: 		        for (uint256 i = 0; i < 128; i++) {

538: 		        for (uint256 i = 0; i < 255; i++) {
```
[[185](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L185), [436](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L436), [454](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L454), [538](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L538)]


---

### [G-21] Low level `call` can be optimized with assembly

`returnData` is copied to memory even if the variable is not utilized: the proper way to handle this is through a low level assembly call.

```solidity
// before
(bool success,) = payable(receiver).call{gas: gas, value: value}("");

//after
bool success;
assembly {
    success := call(gas, receiver, value, 0, 0, 0, 0)
}
```

*There are 2 instances of this issue.*


```solidity
File: src/LendingLedger.sol

179: 		            (bool success, ) = msg.sender.call{value: cantoToSend}("");
```
[[179](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L179)]



```solidity
File: src/VotingEscrow.sol

346: 		        (bool success, ) = msg.sender.call{value: amountToSend}("");
```
[[346](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L346)]


---

### [G-22] Use assembly to emit an `event`

To efficiently emit events, it's possible to utilize assembly by making use of scratch space and the free memory pointer. This approach has the advantage of potentially avoiding the costs associated with memory expansion.

However, it's important to note that in order to safely optimize this process, it is preferable to cache and restore the free memory pointer.

A good example of such practice can be seen in [Solady's](https://github.com/Vectorized/solady/blob/main/src/tokens/ERC1155.sol#L167) codebase.

*There are 8 instances of this issue.*


```solidity
File: src/GaugeController.sol

121: 		        emit NewGauge(_gauge);

131: 		        emit GaugeRemoved(_gauge);
```
[[121](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L121), [131](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L131)]



```solidity
File: src/VotingEscrow.sol

283: 		        emit Deposit(msg.sender, _value, unlock_time, LockAction.CREATE, block.timestamp);

320: 		            emit Deposit(delegatee, _value, newLocked.end, LockAction.DELEGATE, block.timestamp);

322: 		        emit Deposit(msg.sender, _value, unlockTime, action, block.timestamp);

348: 		        emit Withdraw(msg.sender, amountToSend, LockAction.WITHDRAW, block.timestamp);

399: 		            emit Deposit(addr, uint256(int256(value)), newLocked.end, action, block.timestamp);

402: 		            emit Withdraw(addr, uint256(int256(value)), action, block.timestamp);
```
[[283](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L283), [320](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L320), [322](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L322), [348](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L348), [399](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L399), [402](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L402)]


---

### [G-23] `>=`/`<=` costs less gas than `>`/`<`

The compiler uses opcodes `GT` and `ISZERO` for code that uses `>`, but only requires `LT` for `>=`. A similar behaviour applies for `>`, which uses opcodes `LT` and `ISZERO`, but only requires `GT` for `<=`.

*There are 57 instances of this issue.*

<details>
<summary>Expand findings</summary>


```solidity
File: src/GaugeController.sol

69: 		        for (uint256 i; i < 500; ++i) {

70: 		            if (t > block.timestamp) break;

73: 		            if (pt.bias > d_bias) {

82: 		            if (t > block.timestamp) time_sum = t;

93: 		        if (t > 0) {

95: 		            for (uint256 i; i < 500; ++i) {

96: 		                if (t > block.timestamp) break;

99: 		                if (pt.bias > d_bias) {

108: 		                if (t > block.timestamp) time_weight[_gauge_addr] = t;

155: 		        if (total_weight > 0) {

225: 		        require(lock_end > next_time, "Lock expires too soon");

228: 		        if (old_slope.end > next_time) old_dt = old_slope.end - next_time;

254: 		        if (old_slope.end > next_time) {

263: 		        if (old_slope.end > block.timestamp) {
```
[[69](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L69), [70](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L70), [73](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L73), [82](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L82), [93](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L93), [95](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L95), [96](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L96), [99](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L99), [108](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L108), [155](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L155), [225](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L225), [228](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L228), [254](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L254), [263](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L263)]



```solidity
File: src/LendingLedger.sol

68: 		        } else if (lastUserUpdateEpoch < currEpoch) {

74: 		            if (updateUntilEpoch > lastUserUpdateEpoch) {

89: 		        } else if (lastMarketUpdateEpoch < currEpoch) {

95: 		            if (updateUntilEpoch > lastMarketUpdateEpoch) {

110: 		        require(lendingMarketTotalBalanceEpoch[_market] > 0, "No deposits for this market");

122: 		        require(lendingMarketBalancesEpoch[_market][_lender] > 0, "No deposits for this lender in this market");

159: 		        require(userLastClaimed > 0, "No deposits for this user");

178: 		        if (cantoToSend > 0) {
```
[[68](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L68), [74](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L74), [89](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L89), [95](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L95), [110](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L110), [122](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L122), [159](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L159), [178](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L178)]



```solidity
File: src/VotingEscrow.sol

129: 		            if (_oldLocked.end > block.timestamp && _oldLocked.delegated > 0) {

129: 		            if (_oldLocked.end > block.timestamp && _oldLocked.delegated > 0) {

133: 		            if (_newLocked.end > block.timestamp && _newLocked.delegated > 0) {

133: 		            if (_newLocked.end > block.timestamp && _newLocked.delegated > 0) {

167: 		        if (epoch > 0) {

177: 		        if (block.timestamp > lastPoint.ts) {

185: 		        for (uint256 i = 0; i < 255; i++) {

190: 		            if (iterativeTime > block.timestamp) {

199: 		            if (lastPoint.bias < 0) {

203: 		            if (lastPoint.slope < 0) {

228: 		            if (lastPoint.slope < 0) {

231: 		            if (lastPoint.bias < 0) {

243: 		            if (_oldLocked.end > block.timestamp) {

251: 		            if (_newLocked.end > block.timestamp) {

252: 		                if (_newLocked.end > _oldLocked.end) {

272: 		        require(_value > 0, "Only non zero amount");

291: 		        require(_value > 0, "Only non zero amount");

293: 		        require(locked_.amount > 0, "No lock");

294: 		        require(locked_.end > block.timestamp, "Lock expired");

314: 		            require(locked_.amount > 0, "Delegatee has no lock");

315: 		            require(locked_.end > block.timestamp, "Delegatee lock expired");

329: 		        require(locked_.amount > 0, "No lock");

359: 		        require(locked_.amount > 0, "No lock");

382: 		        require(toLocked.amount > 0, "Delegatee has no lock");

383: 		        require(toLocked.end > block.timestamp, "Delegatee lock expired");

405: 		        if (newLocked.amount > 0) {

436: 		        for (uint256 i = 0; i < 128; i++) {

454: 		        for (uint256 i = 0; i < 128; i++) {

480: 		        if (lastPoint.bias < 0) {

507: 		        if (epoch < maxEpoch) {

538: 		        for (uint256 i = 0; i < 255; i++) {

542: 		            if (iterativeTime > _t) {

558: 		        if (lastPoint.bias < 0) {

581: 		        if (point.blk > _blockNumber) {

586: 		        if (targetEpoch < epoch) {
```
[[129](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L129), [129](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L129), [133](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L133), [133](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L133), [167](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L167), [177](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L177), [185](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L185), [190](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L190), [199](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L199), [203](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L203), [228](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L228), [231](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L231), [243](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L243), [251](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L251), [252](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L252), [272](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L272), [291](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L291), [293](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L293), [294](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L294), [314](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L314), [315](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L315), [329](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L329), [359](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L359), [382](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L382), [383](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L383), [405](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L405), [436](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L436), [454](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L454), [480](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L480), [507](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L507), [538](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L538), [542](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L542), [558](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L558), [581](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L581), [586](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L586)]

</details>

---

### [G-24] `internal/private` functions only called once can be inlined to save gas

Consider removing those internal functions and to put the logic directly where they are called, as they are called only once.

*There is 1 instance of this issue.*


```solidity
File: src/VotingEscrow.sol

451: 		    function _findUserBlockEpoch(address _addr, uint256 _block) internal view returns (uint256) {
```
[[451](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L451)]


---

### [G-25] Unused named return variables without optimizer waste gas

Consider changing the variable to be an unnamed one, since the variable is never assigned, nor is it returned by name. If the optimizer is not turned on, leaving the code as it is will also waste gas for the stack variable.

*There is 1 instance of this issue.*


```solidity
File: src/VotingEscrow.sol

98: 		            int128 bias,
```
[[98](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L98)]


---

### [G-26] Function names can be optimized

Function that are `public`/`external` and `public` state variable names can be optimized to save gas.

Method IDs that have two leading zero bytes can save **128 gas** each during deployment, and renaming functions to have lower method IDs will save **22 gas** per call, per sorted position shifted. [Reference](https://blog.emn178.cc/en/post/solidity-gas-optimization-function-name/)

*There are 3 instances of this issue.*


```solidity
File: src/GaugeController.sol

14: 		contract GaugeController {
```
[[14](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L14)]



```solidity
File: src/LendingLedger.sol

8: 		contract LendingLedger {
```
[[8](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L8)]



```solidity
File: src/VotingEscrow.sol

19: 		contract VotingEscrow is ReentrancyGuard {
```
[[19](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L19)]


---

### [G-27] Using `delete` instead of setting mapping/struct to 0 saves gas

Avoid an assignment by deleting the value instead of setting it to zero.

*There are 13 instances of this issue.*


```solidity
File: src/GaugeController.sol

78: 		                pt.bias = 0;

79: 		                pt.slope = 0;

104: 		                    pt.bias = 0;

105: 		                    pt.slope = 0;
```
[[78](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L78), [79](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L79), [104](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L104), [105](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L105)]



```solidity
File: src/VotingEscrow.sol

200: 		                lastPoint.bias = 0;

204: 		                lastPoint.slope = 0;

229: 		                lastPoint.slope = 0;

232: 		                lastPoint.bias = 0;

335: 		        newLocked.amount = 0;

336: 		        newLocked.end = 0;

340: 		        newLocked.delegated = 0;

481: 		            lastPoint.bias = 0;

559: 		            lastPoint.bias = 0;
```
[[200](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L200), [204](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L204), [229](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L229), [232](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L232), [335](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L335), [336](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L336), [340](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L340), [481](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L481), [559](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L559)]


---

### [G-28] Multiplication/division by two should use bit shifting

`X * 2` is equivalent to `X << 1` and `X / 2` is the same as `X >> 1`.

The `MUL` and `DIV` opcodes cost 5 gas, whereas `SHL` and `SHR` only cost 3 gas.

*There are 2 instances of this issue.*


```solidity
File: src/VotingEscrow.sol

438: 		            uint256 mid = (min + max + 1) / 2;

458: 		            uint256 mid = (min + max + 1) / 2;
```
[[438](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L438), [458](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L458)]


---

### [G-29] `x += y` is more expensive than `x = x + y` for state variables



*There are 2 instances of this issue.*


```solidity
File: src/GaugeController.sol

266: 		            changes_sum[old_slope.end] -= old_slope.slope;

270: 		        changes_sum[new_slope.end] += new_slope.slope;
```
[[266](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L266), [270](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L270)]


---

### [G-30] Constructors can be marked `payable`

`payable` functions cost less gas to execute, since the compiler does not have to add extra checks to ensure that a payment wasn't provided.

A `constructor` can safely be marked as `payable`, since only the deployer would be able to pass funds, and the project itself would not pass any funds.

*There are 3 instances of this issue.*


```solidity
File: src/GaugeController.sol

57: 		    constructor(address _votingEscrow, address _governance) {
```
[[57](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L57)]



```solidity
File: src/LendingLedger.sol

46: 		    constructor(address _gaugeController, address _governance) {
```
[[46](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L46)]



```solidity
File: src/VotingEscrow.sol

72: 		    constructor(string memory _name, string memory _symbol) {
```
[[72](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L72)]


---

### [G-31] Long revert strings

Considering refactoring the revert message to fit in 32 bytes to avoid using more than one memory slot.

*There is 1 instance of this issue.*


```solidity
File: src/LendingLedger.sol

122: 		        require(lendingMarketBalancesEpoch[_market][_lender] > 0, "No deposits for this lender in this market");
```
[[122](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L122)]


---

### [G-32] Splitting `require` statements that use `&&` saves gas

Using operator && on a single require costs more gas than using two require.

```solidity
//expensive
require(version == 1 && index == 2);

//cheaper
require(version == 1);
require(index == 2 == bytes1(0));
```

*There are 2 instances of this issue.*


```solidity
File: src/GaugeController.sol

212: 		        require(_user_weight >= 0 && _user_weight <= 10_000, "Invalid user weight");

241: 		        require(power_used >= 0 && power_used <= 10_000, "Used too much power");
```
[[212](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L212), [241](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L241)]


---

### [G-33] Lack of `unchecked` in loops

Use `unchecked` to increment the loop variable as it can save gas:

```solidity
for(uint256 i; i < length;) {
	unchecked{
		++i;
	}
}
```

*There are 6 instances of this issue.*


```solidity
File: src/GaugeController.sol

69: 		        for (uint256 i; i < 500; ++i) {

95: 		            for (uint256 i; i < 500; ++i) {
```
[[69](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L69), [95](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L95)]



```solidity
File: src/VotingEscrow.sol

185: 		        for (uint256 i = 0; i < 255; i++) {

436: 		        for (uint256 i = 0; i < 128; i++) {

454: 		        for (uint256 i = 0; i < 128; i++) {

538: 		        for (uint256 i = 0; i < 255; i++) {
```
[[185](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L185), [436](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L436), [454](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L454), [538](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L538)]


---

### [G-34] `uint` comparison with zero can be cheaper

Checking for `!= 0` is cheaper than `> 0` for unsigned integers.

*There are 17 instances of this issue.*


```solidity
File: src/GaugeController.sol

93: 		        if (t > 0) {

155: 		        if (total_weight > 0) {
```
[[93](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L93), [155](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/GaugeController.sol#L155)]



```solidity
File: src/LendingLedger.sol

110: 		        require(lendingMarketTotalBalanceEpoch[_market] > 0, "No deposits for this market");

122: 		        require(lendingMarketBalancesEpoch[_market][_lender] > 0, "No deposits for this lender in this market");

159: 		        require(userLastClaimed > 0, "No deposits for this user");

178: 		        if (cantoToSend > 0) {
```
[[110](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L110), [122](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L122), [159](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L159), [178](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/LendingLedger.sol#L178)]



```solidity
File: src/VotingEscrow.sol

129: 		            if (_oldLocked.end > block.timestamp && _oldLocked.delegated > 0) {

133: 		            if (_newLocked.end > block.timestamp && _newLocked.delegated > 0) {

167: 		        if (epoch > 0) {

272: 		        require(_value > 0, "Only non zero amount");

291: 		        require(_value > 0, "Only non zero amount");

293: 		        require(locked_.amount > 0, "No lock");

314: 		            require(locked_.amount > 0, "Delegatee has no lock");

329: 		        require(locked_.amount > 0, "No lock");

359: 		        require(locked_.amount > 0, "No lock");

382: 		        require(toLocked.amount > 0, "Delegatee has no lock");

405: 		        if (newLocked.amount > 0) {
```
[[129](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L129), [133](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L133), [167](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L167), [272](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L272), [291](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L291), [293](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L293), [314](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L314), [329](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L329), [359](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L359), [382](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L382), [405](https://github.com/code-423n4/2023-08-verwa/blob/9a2e7be003bc1a77b3b87db31f3d5a1bcb48ed32/src/VotingEscrow.sol#L405)]


---

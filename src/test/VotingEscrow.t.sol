// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.16;

import "forge-std/Test.sol";
import "../VotingEscrow.sol";

contract VotingEscrowTest is Test {
    VotingEscrow public ve;

    address public constant user1 = address(10001);
    address public constant user2 = address(10002);
    address public constant user3 = address(10003);

    uint256 public constant LOCK_AMT = 1 ether;

    function setUp() public {
        ve = new VotingEscrow("Voting Escrow", "VE");
        vm.deal(user1, 100 ether);
        vm.deal(user2, 100 ether);
        vm.deal(user3, 100 ether);
    }

    uint256 public constant WEEK = 7 days;

    function _floorToWeek(uint256 _t) internal pure returns (uint256) {
        return (_t / WEEK) * WEEK;
    }

    function testTryCreateLockWithZeroValue() public {
        vm.expectRevert("Only non zero amount");
        ve.createLock(0);
    }

    function testSuccessCreateLock() public {
        // Lock with a duration 5 year should be created with delegated set to msg.sender
        vm.prank(user1);
        ve.createLock{value: LOCK_AMT}(LOCK_AMT);
        assertEq(ve.lockEnd(user1), _floorToWeek(block.timestamp + ve.LOCKTIME()));
        (, , , address delegatee) = ve.locked(user1);
        assertEq(delegatee, user1);
    }

    function testRevertDelegateNonExisting() public {
        // delegate for non-existing lock
        vm.prank(user1);
        vm.expectRevert("No lock");
        ve.delegate(user1);
    }

    function testRevertDelegateAlreadyDelegated() public {
        testSuccessCreateLock();
        // delegate to already delegated address
        vm.prank(user1);
        vm.expectRevert("Already delegated");
        ve.delegate(user1);
    }

    function testRevertDelegateToWithoutLock() public {
        // delegate to address without lock
        testSuccessCreateLock();
        vm.prank(user1);
        vm.expectRevert("Delegatee has no lock");
        ve.delegate(user2);
    }

    function testSuccessDelegate() public {
        // successful delegate
        testSuccessCreateLock();
        vm.prank(user2);
        ve.createLock{value: LOCK_AMT}(LOCK_AMT);
        vm.prank(user1);
        ve.delegate(user2);
        (, , , address delegatee) = ve.locked(user1);
        assertEq(delegatee, user2);
        (, , int128 delegated, ) = ve.locked(user2);
        assertEq(delegated, 2000000000000000000);
    }

    function testRevertDelegateExpired() public {
        // delegate to delegatee with expired lock
        testSuccessCreateLock();
        (, uint256 end, , ) = ve.locked(user1);
        vm.warp(end + 1);
        vm.prank(user2);
        ve.createLock{value: LOCK_AMT}(LOCK_AMT);
        vm.prank(user2);
        vm.expectRevert("Delegatee lock expired");
        ve.delegate(user1);
    }

    function testRevertDelegateShorter() public {
        // delegate to delegatee with shorter lock
        testSuccessCreateLock();
        vm.warp(block.timestamp + 10 days);
        vm.prank(user2);
        ve.createLock{value: LOCK_AMT}(LOCK_AMT);
        vm.prank(user2);
        vm.expectRevert("Only delegate to longer lock");
        ve.delegate(user1);
    }

    function testSuccessUnDelegate() public {
        // successful undelegate
        testSuccessDelegate();
        vm.prank(user1);
        ve.delegate(user1);
        (, , , address delegatee) = ve.locked(user1);
        assertEq(delegatee, user1);
    }

    function testSuccessReDelegate() public {
        // successful redelegate
        testSuccessDelegate();
        vm.prank(user3);
        ve.createLock{value: LOCK_AMT}(LOCK_AMT);
        vm.prank(user1);
        ve.delegate(user3);
        (, , , address delegatee) = ve.locked(user1);
        assertEq(delegatee, user3);
    }

    function testSuccessIncreaseUndelegated() public {
        // increaseAmount basic functionality for undelegated lock
        // Should increase amount / delegated by the provided value, new end should be reset to be 5 years in the future
        testSuccessUnDelegate();
        vm.warp(block.timestamp + 10 days);
        vm.prank(user1);
        ve.increaseAmount{value: LOCK_AMT}(LOCK_AMT);
        (, , int128 delegated, ) = ve.locked(user1);
        assertEq(uint256(uint128(delegated)), 2 * LOCK_AMT);
        assertEq(ve.lockEnd(user1), _floorToWeek(block.timestamp + ve.LOCKTIME()));
    }

    function testSuccessIncreaseDelegated() public {
        // increaseAmount basic functionality for delegated lock
        // Should reset end to be 5 years in the future and increase delegated value of delegatee
        testSuccessDelegate();
        vm.prank(user1);
        ve.increaseAmount{value: LOCK_AMT}(LOCK_AMT);
        (, , int128 delegated, ) = ve.locked(user2);
        assertEq(uint256(uint128(delegated)), 3 * LOCK_AMT);
        assertEq(ve.lockEnd(user1), _floorToWeek(block.timestamp + ve.LOCKTIME()));
    }

    function testRevertWithdrawDelegated() public {
        // withdraw for delegated lock
        testSuccessDelegate();
        vm.prank(user1);
        vm.expectRevert("Lock not expired");
        ve.withdraw();
    }

    function testSuccessWithdraw() public {
        // withdraw for expired lock
        testSuccessCreateLock();
        (, uint256 end, , ) = ve.locked(user1);
        vm.warp(end + 1);
        uint256 startBalance = address(user1).balance;
        vm.prank(user1);
        ve.withdraw();
        assertEq(address(user1).balance - startBalance, LOCK_AMT);
    }

    function testBalanceOfDelegated() public {
        // balanceOf & balanceOfAt delegated scenarios #23
        // It should be tested for different points in time that balanceOf and balanceOfAt
        // correspond to the expected amount according to the VE model with amounts that are delegated.
        // It should be tested that it is 0 after expiration

        testSuccessDelegate();
        (, uint256 end, , ) = ve.locked(user2);
        for (uint256 i = 0; i < 18; i++) {
            (, , int128 delegated, ) = ve.locked(user2);
            uint256 expected = (uint256(uint128(delegated)) * (end - block.timestamp)) / ve.LOCKTIME();
            uint256 actual = ve.balanceOf(user2);
            if (actual > expected) {
                assertLe((actual * 10000) / expected - 10000, 100); // allow 1% tolerance for rounding
            } else {
                assertLe((expected * 10000) / actual - 10000, 100); // allow 1% tolerance for rounding
            }
            vm.warp(block.timestamp + 100 days);
            vm.roll(block.number + 100);
            ve.checkpoint();
        }

        vm.warp(end + 1);
        uint256 endBlock = end / 86400;
        vm.roll(endBlock + 1);
        ve.checkpoint();

        for (uint256 i = 0; i < 18; i++) {
            uint256 atBlock = 1 + i * 100;
            uint256 atTime = 1 + i * 100 days;
            (, , int128 delegated, ) = ve.locked(user2);
            uint256 expected = (uint256(uint128(delegated)) * (end - atTime)) / ve.LOCKTIME();
            uint256 actual = ve.balanceOfAt(user2, atBlock);
            if (actual > expected) {
                assertLe((actual * 10000) / expected - 10000, 100); // allow 1% tolerance for rounding
            } else {
                assertLe((expected * 10000) / actual - 10000, 100); // allow 1% tolerance for rounding
            }
        }

        assertEq(ve.balanceOfAt(user2, endBlock), 0);
        assertEq(ve.balanceOf(user2), 0);
    }

    function testBalanceOfUnDelegated() public {
        // balanceOf & balanceOfAt undelegated scenarios #23
        // It should be tested for different points in time that balanceOf and balanceOfAt
        // correspond to the expected amount according to the VE model with amounts that are undelegated.
        // It should be tested that it is 0 after expiration

        testSuccessUnDelegate();
        (, uint256 end, , ) = ve.locked(user1);
        for (uint256 i = 0; i < 18; i++) {
            (, , int128 delegated, ) = ve.locked(user1);
            uint256 expected = (uint256(uint128(delegated)) * (end - block.timestamp)) / ve.LOCKTIME();
            uint256 actual = ve.balanceOf(user1);
            if (actual > expected) {
                assertLe((actual * 10000) / expected - 10000, 100); // allow 1% tolerance for rounding
            } else {
                assertLe((expected * 10000) / actual - 10000, 100); // allow 1% tolerance for rounding
            }
            vm.warp(block.timestamp + 100 days);
            vm.roll(block.number + 100);
            ve.checkpoint();
        }

        vm.warp(end + 1);
        uint256 endBlock = end / 86400;
        vm.roll(endBlock + 1);
        ve.checkpoint();

        for (uint256 i = 0; i < 18; i++) {
            uint256 atBlock = 1 + i * 100;
            uint256 atTime = 1 + i * 100 days;
            (, , int128 delegated, ) = ve.locked(user1);
            uint256 expected = (uint256(uint128(delegated)) * (end - atTime)) / ve.LOCKTIME();
            uint256 actual = ve.balanceOfAt(user1, atBlock);
            if (actual > expected) {
                assertLe((actual * 10000) / expected - 10000, 100); // allow 1% tolerance for rounding
            } else {
                assertLe((expected * 10000) / actual - 10000, 100); // allow 1% tolerance for rounding
            }
        }

        assertEq(ve.balanceOfAt(user1, endBlock), 0);
        assertEq(ve.balanceOf(user1), 0);
    }

    function testTryCreateLockWithMsgValueNotEqual_value() public {
        vm.expectRevert("Invalid value");
        ve.createLock{value: 0}(1);

        vm.expectRevert("Invalid value");
        ve.createLock{value: 1}(2);
    }

    function testTryCreateLockWithExistingLock() public {
        ve.createLock{value: 1}(1);

        vm.expectRevert("Lock exists");
        ve.createLock{value: 1}(1);
    }

    function testTryCreateIncreaseAmountWithZeroValue() public {
        vm.expectRevert("Only non zero amount");
        ve.increaseAmount(0);
    }

    function testTryCreateIncreaseAmountWithMsgValueNotEqual_value() public {
        vm.expectRevert("Invalid value");
        ve.increaseAmount{value: 0}(1);

        vm.expectRevert("Invalid value");
        ve.increaseAmount{value: 1}(2);
    }

    function testTryCreateIncreaseAmountWithNonExistingLock() public {
        vm.expectRevert("No lock");
        ve.increaseAmount{value: 1}(1);
    }

    function testTryWithdrawNonExistingLock() public {
        vm.expectRevert("No lock");
        ve.withdraw();
    }

    function testTryWithdrawForNonExpiredLock() public {
        ve.createLock{value: 1}(1);
        vm.expectRevert("Lock not expired");
        ve.withdraw();
    }

    function testTotalSupplyAndTotalSupplyAt() public {
        uint256 week = ve.WEEK();
        uint256 locktime = ve.LOCKTIME();
        uint256 locktimeInWeeks = locktime / week;

        // Initial state
        assertEq(ve.totalSupply(), 0);
        assertEq(ve.totalSupplyAt(block.number), 0);

        vm.expectRevert("Only past block number");
        ve.totalSupplyAt(block.number + 1);

        // Create locks
        uint256 aliceAmount = 6e18;
        uint256 bobAmount = 3e18;
        uint256 charlieAmount = 1e18;

        vm.prank(user1);
        ve.createLock{value: aliceAmount}(aliceAmount);
        vm.prank(user2);
        ve.createLock{value: bobAmount}(bobAmount);
        vm.prank(user3);
        ve.createLock{value: charlieAmount}(charlieAmount);

        uint256 initialBalance = ve.totalSupply();
        uint256 decayWeekAprox = initialBalance / (5 * 52);

        // Until the last week
        for (uint256 _weeks; _weeks < locktimeInWeeks - 1; ++_weeks) {
            uint256 prevTot = ve.totalSupply();
            uint256 prevTotAt = ve.totalSupplyAt(block.number);

            vm.warp(block.timestamp + week);
            vm.roll(block.number + 1);
            ve.checkpoint();

            uint256 tot = ve.totalSupply();
            assertApproxEqRel(tot, prevTot - decayWeekAprox, 0.00000001e18); // 0,000001% Delta
            uint256 totAt = ve.totalSupplyAt(block.number);
            assertApproxEqRel(totAt, prevTotAt - decayWeekAprox, 0.00000001e18); // 0,000001% Delta
        }

        // Last week
        vm.warp(block.timestamp + week);
        vm.roll(block.number + 1);
        ve.checkpoint();
        assertEq(ve.totalSupply(), 0);
        assertEq(ve.totalSupplyAt(block.number), 0);
    }
}

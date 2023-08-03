// SPDX-License-Identifier: GPL-3.0-only
pragma solidity >=0.8.0;
interface Turnstile {
    function register(address) external returns(uint256);
    function assign(uint256) external returns(uint256);
}
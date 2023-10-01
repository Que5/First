// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public count;

    function get() public view returns (uint) {
        return count;
    }
    function increment() public {
        count++;
    }

    function decrement() public {
        count--;
    }
}

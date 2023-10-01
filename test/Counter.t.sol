// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { Test } from "forge-std/Test.sol";
import { Counter } from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
    }

    function testIncrement() public {
        // Test the increment function
        counter.increment();
        assertEq(counter.count(), 1);
    }

    function testFailDecrement() public {
        counter.decrement();
    }

    function testFailDecrementUnderflow() public {
        bool success;
        (success, ) = address(counter).call(abi.encodeWithSignature("increment()"));
        assertTrue(!success, "Expected revert");
    }

    function testDecrement() public {
        counter.increment();
        counter.increment();
        counter.decrement();
        assertEq(counter.count(), 1);

    }
}

   

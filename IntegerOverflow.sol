// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract IntegerOverflow {
    uint8 public counter;

    function increment() public {
        // Vulnerable to integer overflow
        counter += 1;
    }

    function decrement() public {
        // Vulnerable to integer underflow
        counter -= 1;
    }

    function add(uint8 amount) public {
        // No overflow check
        counter = counter + amount;
    }

    function multiply(uint8 factor) public {
        // No overflow check
        counter = counter * factor;
    }
}
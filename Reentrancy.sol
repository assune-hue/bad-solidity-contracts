// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Reentrancy {
    uint public balance;

    function deposit() public payable {
        balance += msg.value;
    }

    function withdraw() public {
        require(balance > 0);

        // Vulnerable to reentrancy attack
        (bool success, ) = msg.sender.call{value: balance}('');
        require(success);
        balance = 0;
    }
}
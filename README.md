# Reentrancy Vulnerability in Ownership Transfer
This repository demonstrates a reentrancy vulnerability in a smart contract's ownership transfer function and its solution.

## Vulnerability
The original `transferOwnership` function lacks protection against reentrancy attacks. A malicious contract can call `transferOwnership` recursively before the state is updated, potentially regaining control.

## Solution
The solution utilizes the Checks-Effects-Interactions pattern to prevent reentrancy.  The ownership transfer is only completed after all checks and internal effects have happened.
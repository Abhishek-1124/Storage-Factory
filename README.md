# Storage-Factory
<img width="1376" height="768" alt="image" src="https://github.com/user-attachments/assets/619b4b56-736b-4c78-af65-a760646b639f" />

A Solidity smart contract project that demonstrates the factory pattern for creating and managing multiple storage contracts with different behaviours.

## Overview
<img width="1376" height="768" alt="image" src="https://github.com/user-attachments/assets/a34d280d-e978-4b18-a30d-7f6a19071157" />

Storage-Factory is an educational blockchain project that showcases:
- **Factory Pattern**: The `StorageFactory` contract creates and manages instances of storage contracts
- **Inheritance**: Multiple storage contract variants that inherit from a base contract
- **Contract Composition**: Managing arrays of contract instances and interacting with them

## Contracts

### SimpleStorage
The base storage contract that stores and retrieves a single favourite number.

** Features: **
- Store a favourite number
- Retrieve the stored number
- Add people with their favourite numbers
- Map names to favourite numbers

### StorageFactory
The factory contract that creates and manages multiple storage contract instances.

** Features: **
- Create new `SimpleStorage` contract instances
- Create new `SquareStorage` contract instances
- Store numbers across different storage contracts
- Retrieve numbers from different storage contracts

** Key Functions: **
- `createSimpleStorageContract()` - Deploys a new SimpleStorage contract
- `createSquareStorageContract()` - Deploys a new SquareStorage contract
- `sfStore(index, number)` - Store a number in a specific contract
- `sfGet(index)` - Retrieve a number from a specific contract

### SquareStorage
A variant of SimpleStorage that squares the input number before storing.

** Behaviour: ** When storing a number `n`, it actually stores `n²`

### AddFiveStorage
A variant of SimpleStorage that adds 5 to the input number before storing.

**Behaviour:** When storing a number `n`, it actually stores `n + 5`

## How It Works

1. Deploy the `StorageFactory` contract
2. Call `createSimpleStorageContract()` or `createSquareStorageContract()` to create new storage instances
3. Use `sfStore(index, value)` to store values in specific contract instances
4. Use `sfGet(index)` to retrieve values from specific contract instances

## Example Usage

```solidity
// Create a storage contract
storageFactory.createSimpleStorageContract();

// Store a number in the first contract
storageFactory.sfStore(0, 42);

// Retrieve the number
uint256 result = storageFactory.sfGet(0);
// result = 42

// Create a square storage contract
storageFactory.createSquareStorageContract();
storageFactory.sfStore(1, 5);

// Retrieve the squared number
uint256 squared = storageFactory.sfGet(1);
// squared = 25
```

## Technical Details

- ** Solidity Version **: 0.8.18
- ** License **: MIT
- ** Pattern **: Factory Pattern, Inheritance

## Learning Objectives

This project is designed to teach:
- How to use the Factory Pattern in Solidity
- Contract inheritance and function overriding
- Managing multiple contract instances
- Interacting with deployed contracts through a factory

## Development

All contracts are located in the `StorageFactory/` directory and follow Solidity best practices with proper SPDX license identifiers.

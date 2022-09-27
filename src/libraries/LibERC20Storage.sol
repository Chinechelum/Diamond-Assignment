// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
struct LibERC20Storage {

    mapping(address => uint256) _balances;

    uint256 _totalSupply;

    string _name;
    string _symbol;

    address owner;
}
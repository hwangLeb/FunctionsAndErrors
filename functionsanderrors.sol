// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Functions_And_Errors {
    uint256 public totalBalance;
    
    function deposit(uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");
        totalBalance += amount;
    }
    
    function withdraw(uint256 amount) public {
        require(totalBalance >= amount, "Insufficient balance");
        totalBalance -= amount;
    }
    
    function assertExample(uint256 a, uint256 b) public pure returns (uint256) {
        assert(a + b > 10);
        return a + b;
    }
    
    function revertExample() public pure {
        revert("This transaction is reverted");
    }
}

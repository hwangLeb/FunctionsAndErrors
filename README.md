# FUNCTIONS AND ERRORS
This assessment tackles the require, assert and the revert in Module 1 of Avalanche in Metacraters.

#DESCRIPTION
Require - is a condition that needs to be met in order for the function to continue. The function will execute again and any state modifications performed during the execution will be undone if the condition evaluates to false.
Assert - It's used to seek for conditions that need never to evaluate to untrue. Typically, it's utilized for checking for static conditions or internal errors.
Revert - is used to revert the current transaction with an optional error message.

# GETTING STARTED
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., FUNCTIONSANDERRORS.sol). Copy and paste the following code into the file:

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.25;

contract FunctionsAndErrors {
    uint256 public totalSupply;
    
    constructor(uint256 _initialSupply) {
        require(_initialSupply > 0, "Initial supply must be greater than zero");
        totalSupply = _initialSupply;
    }
    
    function increaseSupply(uint256 _amount) public {
        uint256 newTotalSupply = totalSupply + _amount;
        require(newTotalSupply > totalSupply, "Overflow detected");
        totalSupply = newTotalSupply;
    }
    
    function assertExample(uint256 _value) public pure returns (uint256) {
        uint256 result = _value * 2;
        assert(result > _value);
        return result;
    }
    
    function revertExample(uint256 _value) public pure returns (uint256) {
        require(_value != 0, "Value cannot be zero");
        if (_value > 100) {
            revert("Value exceeds maximum limit");
        }
        return _value * 2;
    }
}

# AUTHOR
Eugenio, Viel B.
3.1 BSIT

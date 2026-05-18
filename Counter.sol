// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter {
    uint256 public count = 0;
    
    event Increment(uint256 newCount);
    event Decrement(uint256 newCount);

    function increment() public {
        count += 1;
        emit Increment(count);
    }

    function decrement() public {
        if (count > 0) {
            count -= 1;
            emit Decrement(count);
        }
    }

    function getCount() public view returns (uint256) {
        return count;
    }
}
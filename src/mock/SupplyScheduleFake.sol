// SPDX-License-Identifier: BSD-3-CLAUSE
pragma solidity 0.6.9;
pragma experimental ABIEncoderV2;

import "../SupplySchedule.sol";


contract SupplyScheduleFake is SupplySchedule {
    uint256 private timestamp = 1444004400;
    uint256 private number = 10001;

    function mock_setBlockTimestamp(uint256 _timestamp) public {
        timestamp = _timestamp;
    }

    function mock_setBlockNumber(uint256 _number) public {
        number = _number;
    }

    function mock_getCurrentTimestamp() public view returns (uint256) {
        return _blockTimestamp();
    }

    // Override BlockContext here
    //prettier-ignore
    function _blockTimestamp() internal override view returns (uint256) {
        return timestamp;
    }

    //prettier-ignore
    function _blockNumber() internal override view returns (uint256) {
        return number;
    }
}
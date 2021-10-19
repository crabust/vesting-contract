// SPDX-License-Identifier: MIT

pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

import "../YayVesting.sol";

contract YayVestingMock is YayVesting {
    constructor(
        address _token,
        bytes32 _mercleRoot,
        uint256 _tgeTimestamp,
        uint256 steps
    ) public YayVesting(_token, _mercleRoot, _tgeTimestamp) {
        categories[CategoryNames.VESTING] = CategoryType({
            totalSteps: steps,
            stepTime: 30 days,
            percentBefore: 2_50,
            percentAfter: 2_50
        });
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @dev Simple interface for the Drips Hub to show protocol integration.
 */
interface IDripsHub {
    function setDrips(uint256 tokenId, address erc20, uint256[] calldata receivers) external;
}

/**
 * @title HydraSplitter
 * @notice Manages automated capital redistribution using the Drips Network.
 */
contract HydraSplitter {
    address public owner;
    IDripsHub public immutable dripsHub;

    event StreamSplit(address indexed user, uint256 totalAmount);

    constructor(address _dripsHub) {
        owner = msg.sender;
        dripsHub = IDripsHub(_dripsHub);
    }

    /**
     * @notice Configures a new waterfall split for the caller.
     * @param erc20 The currency address (e.g., USDC).
     * @param receivers Array of receiver configurations.
     */
    function configureWaterfall(address erc20, uint256[] calldata receivers) external {
        // This is where we would call dripsHub.setDrips
        emit StreamSplit(msg.sender, receivers.length);
    }
}

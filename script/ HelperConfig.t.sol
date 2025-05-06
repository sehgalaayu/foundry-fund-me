// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Script} from "forge-std/Script.sol";

contract HelperConfig {
    // Struct to hold data like price feed addresses
    struct NetworkConfig {
        address priceFeed;
    }

    // Stores the active network config
    NetworkConfig public activeNetworkConfig;

    // Constructor auto-selects the config based on chainId
    constructor() {
        if (block.chainid == 11155111) { // Sepolia
            activeNetworkConfig = getSepoliaEthConfig();
        } else {
            activeNetworkConfig = getAnvilEthConfig(); // Local test
        }
    }

    // Sepolia: return real priceFeed address
    function getSepoliaEthConfig() public pure returns (NetworkConfig memory) {
        return NetworkConfig({
            priceFeed: 0x694AA1769357215DE4FAC081bf1f309aDC325306
        });
    }

    // Anvil: for now, return empty ( will add mocks later)
    function getAnvilEthConfig() public pure returns (NetworkConfig memory) {
        return NetworkConfig({
            priceFeed: address(0) // placeholder for now
        });
    }
}

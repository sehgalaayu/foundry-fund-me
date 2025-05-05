# Foundry Fund Me

A decentralized crowdfunding platform built with Solidity and Foundry. This project demonstrates the implementation of a smart contract that allows users to fund projects and withdraw funds.

## Features

- Users can fund the contract with ETH
- Minimum funding amount enforced in USD
- Only the owner can withdraw funds
- Price feed integration for ETH/USD conversion
- Comprehensive test suite

## Prerequisites

- [Foundry](https://book.getfoundry.sh/getting-started/installation)
- [Git](https://git-scm.com/downloads)

## Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/foundry-fund-me.git
cd foundry-fund-me
```

2. Install dependencies:
```bash
forge install
```

## Usage

### Compile the contracts:
```bash
forge build
```

### Run tests:
```bash
forge test
```

### Deploy the contract:
```bash
forge script script/DeployFundMe.s.sol
```

## Project Structure

```
├── script/              # Deployment scripts
├── src/                 # Smart contracts
│   ├── FundMe.sol      # Main contract
│   └── PriceConverter.sol
├── test/               # Test files
│   ├── integration/    # Integration tests
│   ├── mock/          # Mock contracts
│   └── unit/          # Unit tests
└── lib/                # Dependencies
```

## Smart Contract Details

### FundMe.sol
The main contract that handles:
- Accepting funds
- Converting ETH to USD
- Managing funders
- Withdrawing funds

### PriceConverter.sol
Utility contract for price conversion between ETH and USD.

## Testing

The project includes:
- Unit tests for individual contract functions
- Integration tests for contract interactions
- Mock contracts for testing

Run specific test files:
```bash
forge test --match-path test/unit/FundMeTest.t.sol
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


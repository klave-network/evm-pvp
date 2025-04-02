# EVM Payment Vs Payment (PvP) Application

This Rust-based template facilitates the development of an EVM-compatible Payment Vs Payment (PvP) application. It enables secure and efficient interactions between parties on Ethereum-based blockchains, focusing on payment-versus-payment scenarios.

## Usage

The EVM PvP application allows users to perform atomic swaps and ensure that payments between two parties are executed simultaneously, mitigating counterparty risk. Leveraging confidential computing, the application ensures that private keys remain non-extractable and operations are secure. On-chain transactions are supported, while cross-chain transactions are not included in this template.

## Prerequisites

To build and use this template, ensure the following tools are installed:

- **Rust Toolchain**: Includes `rust`, `rustup`, and `cargo`. [Install Rust](https://www.rust-lang.org/tools/install)
- **Cargo Component**: Install via `cargo install cargo-component`
- **WASM Target**: Add the target with `rustup target add wasm32-unknown-unknown`

## Wasm Component

Klave applications are built as WebAssembly (WASM) components. The following methods are implemented and exposed in the `evm-pvp` component:

### Network Management
- `register-routes`: Registers the available routes.
- `network-add`: Adds a new network.
- `network-set-chain-id`: Sets the chain ID for a network.
- `network-set-gas-price`: Sets the gas price for a network.
- `networks-all`: Lists all configured networks.

### Wallet Management
- `wallet-add`: Adds a new wallet.
- `wallet-add-network`: Associates a wallet with a network.
- `wallet-lock`: Locks a wallet.
- `wallet-unlock`: Unlocks a wallet.
- `wallet-address`: Retrieves the wallet's address.
- `wallet-secret-key`: Retrieves the wallet's secret key.
- `wallet-public-key`: Retrieves the wallet's public key.
- `wallet-balance`: Checks the wallet's balance.
- `wallet-networks`: Lists networks associated with the wallet.
- `wallet-transfer`: Initiates a transfer from the wallet.
- `wallet-deploy-contract`: Deploys a Solidity contract.
- `wallet-call-contract`: Calls a method on a deployed contract.
- `wallets-all-for-user`: Retrieves all wallets associated with a user.
- `wallets-all`: Lists all available wallets.

### User Management
- `user-add`: Adds a new user.
- `user-get`: Retrieves user details.
- `user-add-wallet`: Associates a wallet with a user.
- `users-all`: Lists all registered users.

### Transaction Management
- `transaction-add`: Creates a new transaction.
- `transaction-get`: Retrieves details of a specific transaction.
- `transaction-commit`: Commits a transaction.
- `transaction-apply`: Applies a transaction.
- `transactions-all-for-user`: Retrieves all transactions associated with a user.

## Deploying Your App on Klave

To deploy your application on Klave:

1. **Build the Application**:
   ```sh
   cargo component build --target wasm32-unknown-unknown --release
   ```
   This command generates the WASM files in the `target/wasm32-unknown-unknown/release/` directory.

2. **Deploy to Klave**: Follow the deployment instructions provided in the [Klave documentation](https://docs.klave.com/deployment).

## Authors

This template is created by Klave and Secretarium team members, with contributions from:

- Jeremie Labbe ([@jlabbeklavo](https://github.com/jlabbeklavo)) - Klave | Secretarium

For more information and support, refer to the [Klave documentation](https://docs.klave.com) or contact the authors.


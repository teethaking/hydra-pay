# 🌊 Hydra-Pay: Programmable Waterfall Streams
Hydra-Pay is a modular extension for the **Drips Network**, designed to handle multi-layered, automated capital distribution. While the base Drips protocol allows for linear streaming, Hydra-Pay introduces **hierarchical logic**, enabling funds to flow through complex organizational structures like water through a series of basins.
## 📖 Overview
In the world of decentralized finance, managing revenue sharing for DAOs, creative collectives, or SaaS platforms often requires manual intervention or gas-heavy re-distributions. **Hydra-Pay** solves this by creating "Waterfall Vaults."
When a stream hits a Hydra Vault, it doesn't just sit there—it is instantly diverted based on pre-defined priority tiers. Once the primary tier's funding goal is met, the "overflow" automatically cascades to the next tier of recipients.
### 🧩 Core Architecture
The system operates on three primary layers:
 1. **The Hub Interface:** Direct integration with the **Drips v2 Hub**, inheriting its security and efficiency.
 2. **Logic Controllers:** Smart contracts that dictate the "fill-and-spill" rules for each vault.
 3. **The SDK:** A TypeScript-first library that abstracts the complexity of calculating stream rates and durations.
## 🚀 Key Features
### 💧 Waterfall Logic
 * **Priority Queues:** Define who gets paid first. Perfect for recouping initial investments before splitting profits.
 * **Cap Management:** Set hard limits on specific tiers. Once a vault reaches its X token limit, the stream pivots in real-time.
 * **Recursive Streams:** A waterfall can feed into another waterfall, allowing for infinite organizational nesting.
### 🛠 Developer Experience
 * **Lightweight SDK:** Minimal dependencies to keep your frontend fast.
 * **Gas Optimized:** Leveraging Drips' underlying architecture to ensure that even complex splits remain affordable.
 * **Event Hooks:** Listen for "Spillover Events" to trigger external actions (like Discord notifications or UI updates).
### 🛡 Security & Reliability
 * **Immutable Rules:** Once a waterfall is deployed, the logic is locked (unless configured with a multisig controller).
 * **Non-Custodial:** Hydra-Pay never "holds" your funds; it simply directs the Drips protocol on how to move them.
## 💻 Technical Quickstart
To integrate Hydra-Pay into your project, install the core package:
```bash
npm install @hydra-pay/sdk

```
**Basic Implementation Example:**
```typescript
import { HydraVault } from '@hydra-pay/sdk';

// Initialize a waterfall that pays the Lead dev $1000 
// before splitting 50/50 with the DAO
const vault = await HydraVault.create({
  tiers: [
    { recipient: '0xLead...', cap: 1000 },
    { recipient: '0xDAO...', split: 0.5 }
  ]
});

```
## 🤝 Contributing
We maintain high standards to ensure the protocol remains a "set-and-forget" infrastructure piece for the ecosystem.
### 📜 Development Standards
 * **Conventional Commits:** All PRs must follow the Conventional Commits specification (e.g., feat:, fix:, docs:).
 * **NatSpec Documentation:** Every internal and public function must be documented using the Ethereum Natural Language Specification.
 * **Testing:** We aim for 100% branch coverage. Use forge test (Foundry) to verify your changes before submitting.
### 🏗 Local Setup
 1. Clone the repo: git clone https://github.com/your-repo/hydra-pay.git
 2. Install Foundry: foundryup
 3. Run tests: forge test -vvv
## ⚖️ License
Distributed under the MIT License. See LICENSE for more information.

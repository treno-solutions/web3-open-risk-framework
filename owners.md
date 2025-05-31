# 🛡 Risk Owner Model

Understanding who is responsible for a given risk is essential for evaluating its real-world relevance and mitigation potential. While the investor always bears the ultimate exposure, not all risks can be influenced or resolved by them.

This file defines a layered **Risk Owner Model** – a set of clearly scoped roles that map responsibility across the crypto ecosystem. Each role is exclusive and collectively they cover the full surface of possible control, oversight, or action.

---

## 🧍 INVESTOR

**Scope:**  
The individual or entity holding the asset or financial position.

**Responsibility:**  
Investors cannot directly fix most risks, but they are the ones affected. Their power lies in choice – they can allocate capital, exit a position, or participate in governance where applicable.

**Typical actions:**  
- Rebalancing portfolios  
- Exiting risky positions  
- Participating in DAO votes  
- Choosing alternative products

---

## 🛰 PLATFORM_OPERATOR

**Scope:**  
Risk monitoring platforms and analytics services (e.g. Treno, TokenLogic).

**Responsibility:**  
Not directly responsible for the risk itself, but they provide the **visibility** required to act on it. They contextualize, categorize, and escalate.

**Typical actions:**  
- Monitoring and alerting  
- Publishing reports  
- Surfacing new or emerging risks  
- Informing investors and teams

---

## 🏗 PROTOCOL_TEAM

**Scope:**  
The team, foundation, or DAO that designs and maintains the application logic.

**Responsibility:**  
They have the most direct power to fix problems, deploy changes, or modify risk-related parameters.

**Typical actions:**  
- Contract upgrades  
- Governance proposals  
- Incident response  
- Public communication

---

## ⚙️ BASE_INFRASTRUCTURE

**Scope:**  
Layer 1 or Layer 2 networks (e.g. Ethereum, Arbitrum).

**Responsibility:**  
They secure the base layer, define consensus, and affect every application built on top.

**Typical actions:**  
- Hard forks or protocol upgrades  
- Validator incentive changes  
- Infrastructure-level mitigations  
- Chain-wide coordination

---

## 🔗 DEPENDENCY_PROVIDER

**Scope:**  
External services that protocols rely on but do not control.

**Examples:**  
Oracles, bridges, custody solutions, RPC endpoints, or APIs.

**Responsibility:**  
They are not part of the protocol but their performance directly affects it.

**Typical actions:**  
- Maintaining uptime and correctness  
- Applying fallback mechanisms  
- Publishing documentation or fixes  
- Handling security incidents

---

## 🧑‍⚖️ GOVERNANCE_PARTICIPANT

**Scope:**  
Token holders or delegates who vote in governance processes.

**Responsibility:**  
They can influence protocol direction but are not implementers.

**Typical actions:**  
- Voting on proposals  
- Delegating power  
- Raising concerns  
- Proposing new ideas

---

## 🧱 STAKING_OPERATOR

**Scope:**  
Validators, sequencers, or block producers who secure the network.

**Responsibility:**  
They ensure uptime, liveness, and economic finality.

**Typical actions:**  
- Running reliable infrastructure  
- Participating in consensus  
- Avoiding slashing conditions  
- Supporting protocol security

---

## 🧪 AUDITOR_OR_SECURITY_REVIEWER

**Scope:**  
External security professionals or firms conducting formal reviews.

**Responsibility:**  
Not accountable for what happens on-chain, but gatekeepers of risk before deployment.

**Typical actions:**  
- Publishing audit reports  
- Identifying known issues  
- Reviewing upgrade proposals  
- Recommending mitigations

---

## 🧩 Usage in the Risk Catalogue

Each risk is assigned one or more **Risk Owners** to clarify accountability. This field answers:

> Who can take action to prevent, mitigate, or respond to this risk?

Use this to inform:

- Mitigation strategies  
- Ownership gaps  
- Governance decisions  
- Monitoring responsibilities

---

## 🎯 Summary Table

| Enum Value                  | Scope of Responsibility                         | Power to Act | Example Entities                     |
|-----------------------------|--------------------------------------------------|--------------|--------------------------------------|
| `INVESTOR`                  | Holds the capital and bears the loss            | Indirect     | Retail users, fund managers          |
| `PLATFORM_OPERATOR`         | Surfaces and explains risks                     | Indirect     | Treno, TokenLogic, RiskDAO           |
| `PROTOCOL_TEAM`             | Develops and maintains the application logic    | Direct       | Aave team, Compound Labs, Lido DAO   |
| `BASE_INFRASTRUCTURE`       | Maintains base blockchain network               | Direct       | Ethereum Foundation, Solana Labs     |
| `DEPENDENCY_PROVIDER`       | Provides external services to protocols         | Partial      | Chainlink, LayerZero, Fireblocks     |
| `GOVERNANCE_PARTICIPANT`    | Votes on key decisions                          | Indirect     | Token holders, DAO delegates         |
| `STAKING_OPERATOR`          | Runs infrastructure and secures the network     | Direct       | Solo validators, Lido node operators |
| `AUDITOR_OR_SECURITY_REVIEWER` | Reviews code and flags risk                   | Advisory     | Trail of Bits, CertiK, Code4rena     |

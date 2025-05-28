# 🎯 Investment Impact

This section defines the different **investment objectives** that a risk can affect. Each objective represents a distinct aspect of what investors care about – from financial performance to legal certainty.

A risk entry in the catalogue should indicate:

- **Which objective(s)** are affected
- **Direction of Impact**:
  - `INCREASE` – the value increases (e.g. COST ↑ → bad)
  - `DECREASE` – the value decreases (e.g. TRUST ↓ → bad)
- **Impact Goal**: whether the objective should ideally go up or down

> Note: The model only tracks *negative* impacts – situations where the outcome deviates from the desired direction.

---

## 📊 Purpose and Use

The impact model serves multiple purposes:

- It links risks to investor priorities (e.g. value preservation, liquidity access)
- It enables simplified scoring logic by clustering impacts into thematic **impact domains**
- It informs the design of **measures** that can counteract specific risk effects
- It helps communicate risk relevance at a glance through UI or dashboards

---

## 🧩 Impact Domains and Objectives

### 💰 Financial Impact  
Risks that directly affect the economic value, returns, or cost-efficiency of a position.

| Enum       | Description | Goal      | Example |
|------------|-------------|-----------|---------|
| `VALUE`    | The monetary value of an asset in the base currency (e.g. USD, EUR). | ↑ Increase | Loss of value due to protocol exploit |
| `YIELD`    | Net gain or return over time (e.g. interest, staking). | ↑ Increase | Yield erosion from overuse of rewards |
| `COST`     | Operational or transactional costs (e.g. gas fees, custody). | ↓ Decrease | Gas spikes on Ethereum L1 |
| `LIQUIDITY`| Ability to exit or reallocate efficiently. | ↑ Increase | Illiquid pools during volatility |

---

### 🛡 Security Impact  
Risks that reduce the technical or operational safety of the asset position.

| Enum         | Description | Goal      | Example |
|--------------|-------------|-----------|---------|
| `LOSS`       | Permanent or partial loss of funds. | ↓ Decrease | Theft via contract vulnerability |
| `ACCESS`     | Asset mobility (e.g. lock-up, seizure). | ↑ Increase | Regulatory seizure of assets |
| `DEPENDENCY` | Reliance on external actors/services. | ↓ Decrease | Downtime of oracle provider |
| `TRUST`      | Confidence in system correctness and behavior. | ↑ Increase | Confusing governance outcomes |
| `POTENTIAL`  | Opportunity for future value/growth. | ↑ Increase | Stagnation from halted upgrades |

---

### ⚖️ Regulatory Impact  
Risks that affect the legal clarity or reputational standing of the asset or protocol.

| Enum            | Description | Goal      | Example |
|-----------------|-------------|-----------|---------|
| `LEGAL_STATUS`  | Compliance with laws and regulations. | ↑ Increase | DAO unintentionally offering securities |
| `TRANSPARENCY`  | Access to credible structural or governance info. | ↑ Increase | Opaque multisig structures |

---

## 🔁 Connection to Measures

Each risk impact can be addressed or mitigated by **measures**. A measure should clearly state:

- Which **objective(s)** it affects
- How it changes the **direction** of impact
- Whether it helps align with the **desired goal**

This enables:

- Actionable recommendations for users  
- Automated prioritization of risk responses  
- Meaningful change tracking in dashboards or scoring

---

## 📌 Implementation Tip

For product teams: use this model as a schema to tag and filter risks in your UI. Visually highlight the **top 1–3 impacted objectives** and indicate whether the situation is improving or worsening.

For analysts: consider grouping risks by dominant impact domain (financial, security, regulatory) to align with your audience or investment mandate.

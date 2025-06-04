# Risk: Decreasing Lending Yield Over Time

```yaml
id: R:DECREASING_YIELD
title: Decreasing Lending Yield Over Time
category: FINANCIAL
type: HYBRID
scopes:
  - LENDING
  - ASSET
  - APPLICATION
owners:
  - INVESTOR
  - PROTOCOL_TEAM
  - PLATFORM_OPERATOR
objectives:
  - type: YIELD
    direction: DECREASE
    goal: INCREASE
  - type: VALUE
    direction: DECREASE
    goal: INCREASE
indicatorWeights:
  - I:LENDING_APY_TREND: 1.0
  - I:UTILIZATION_RATIO: 0.6
measures:
  - M:REALLOCATE_CAPITAL
```

---

## 🧠 Description

Over time, lending protocols may produce lower returns due to increased supply, reduced borrowing demand, or protocol changes. This leads to a yield erosion that makes the strategy unattractive or even economically unviable beyond a certain point. This is particularly common during market downturns or after significant incentive programs expire, as capital often remains idle or reallocates elsewhere.

---

## 🧭 Context

Lending yields are dynamic and depend on the balance between supply and borrow. If more users supply capital or fewer users borrow, the interest rate declines. Protocol incentives may also change, rewards may end, or risk-return ratios shift due to macro conditions.

This risk is especially relevant for passive investors and treasury managers relying on steady yield strategies.

---

## 📌 Pre-Measure Allocation State

| Protocol  | Asset | Allocation | APY   | Utilization | Risk Assessment |
|-----------|--------|------------|-------|--------------|------------------|
| Compound  | USDT   | 70%        | 8.2%  | 81%          | 🔴 High risk due to rising utilization |
| Aave      | USDC   | 30%        | 4.3%  | 42%          | 🟢 Low risk, lower yield |

At the time of assessment, the majority of capital was allocated to Compound due to its significantly higher APY. However, utilization levels rose above 80%, breaching internal thresholds and raising concerns about capital efficiency and risk exposure. Utilization above 80% breaches our internal risk tolerance threshold due to heightened liquidity risk.

---

## 🎯 Rationale for Action

To mitigate overexposure to potentially stressed liquidity conditions on Compound, the strategy reallocated all capital to Aave, accepting lower yield in exchange for improved stability and utilization metrics.

This aligns with a conservative profile focused on long-term preservation and risk-adjusted returns.

---

## 📈 Indicators

- **I:LENDING_APY_TREND**: Lending APY Trend
- **I:UTILIZATION_RATIO**: Utilization Ratio

Combining APY Trend (long-term sustainability) with Utilization Ratio (short-term liquidity risk) provides comprehensive lending risk monitoring.

### ⚖️ Indicator Weights

Indicator weights define relative importance. Here, the APY Trend fully (weight = 1.0) determines whether the risk escalates, while Utilization Ratio (weight = 0.6) has a supplementary influence.

```yaml
indicatorWeights:
  - I:LENDING_APY_TREND: 1.0
  - I:UTILIZATION_RATIO: 0.6
```

---

## 🛠 Measures

- **M:REALLOCATE_CAPITAL**: Reallocation to other protocols or chains.

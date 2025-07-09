# 🧮 Assessment: A:DECREASING_YIELD

```yaml
id: A:DECREASING_YIELD
title: Assessment for Decreasing Yield Risk
type: Assessment
version: 1.0
date: 2025-05-29
riskId: R:DECREASING_YIELD
assessedBy: Community Analyst Team
severity: MEDIUM
likelihood: LIKELY
persistence: PERSISTENT
```

## 🧠 Assessment Summary

This assessment documents a structured risk evaluation for `R:DECREASING_YIELD`, demonstrating how yield-based lending strategies can drift out of alignment with risk objectives over time.

Yield erosion does not immediately impact capital, but leads to underperformance. In high-utilization environments, the capital becomes illiquid, and yield signals may lag behind risk exposure.

## 📊 Risk Classification

| Dimension | Rating | Explanation |
|-----------|--------|-------------|
| Severity | Medium | No direct loss, but contributes to systemic underperformance and misaligned portfolio exposure |
| Likelihood | High | Commonly observed in volatile markets or poorly managed lending protocols |
| Persistence | High | Unless actively rebalanced, positions tend to degrade slowly but continuously |

## 📈 Position-Based Evaluation

### 1️⃣ USDT on Compound

| Indicator | Weight | Value | Interpretation |
|-----------|--------|-------|----------------|
| I:LENDING_APY_TREND | 1.0 | +4.2% MoM | Rapidly rising APY, signaling increased borrowing demand or incentives |
| I:UTILIZATION_RATIO | 0.6 | 94% | Excessively high utilization, indicating stress on liquidity and risk of lock-ins |

**Risk Status:** `Escalating`  
**Implication:** The high yield is overshadowed by elevated risk. Liquidity constraints may arise, and the strategy becomes misaligned with a conservative or balanced profile.  
**Triggered Measure:** `M:REALLOCATE_CAPITAL`  
**Action:** Withdraw USDT from Compound and rotate into a more stable protocol.

### 2️⃣ USDC on Aave

| Indicator | Weight | Value | Interpretation |
|-----------|--------|-------|----------------|
| I:LENDING_APY_TREND | 1.0 | -1.1% MoM | Slightly declining APY, but still within acceptable range |
| I:UTILIZATION_RATIO | 0.6 | 48% | Healthy protocol balance with adequate liquidity and low stress level |

**Risk Status:** `Acceptable`  
**Implication:** The lower yield reflects a safer protocol state. This position fits the target yield-risk ratio better.  
**Action:** Receive capital reallocated from Compound to maintain overall portfolio stability.

## 🗂 Visual Risk Evolution

| Date | Protocol | Asset | Utilization Ratio | Risk Level | Indicator |
|------|----------|-------|-------------------|------------|-----------|
| 2024-12-01 | Compound | USDT | 48% | 🟢 Low | ✅ |
| 2025-01-01 | Compound | USDT | 66% | 🟡 Medium | ⚠️ |
| 2025-02-01 | Compound | USDT | 94% | 🔴 High | ❗ |
| 2025-02-01 | Aave | USDC | 42% | 🟢 Low | ✅ |

## 🔁 Capital Rotation Summary

| Asset | Platform | Risk Status | Triggered Measure | Action |
|-------|----------|-------------|-------------------|--------|
| USDT | Compound | Escalating | M:REALLOCATE_CAPITAL | Capital withdrawn and reallocated |
| USDC | Aave | Acceptable | — | Serves as target destination for funds |

## 🧭 Interpretation

This assessment highlights how quantitative indicators can guide real-time capital decisions. Instead of chasing nominal yield, the framework supports dynamic repositioning based on risk-adjusted metrics.

The combination of APY trend analysis with utilization monitoring provides a comprehensive view of both yield sustainability and liquidity risk, enabling informed capital allocation decisions.
# 🥮 Risk Assessment Guide

This document defines how to perform consistent, transparent, and meaningful **risk assessments** within the Web3 Open Risk Framework.

The goal is to provide a structured methodology that supports both **qualitative interpretation** and **quantitative evaluation**, depending on the risk type.

---

## 🌟 Purpose

The assessment process helps answer:

- How severe is the risk if it materializes?
- How likely is it to occur?
- How persistent or dynamic is the risk over time?
- Are there any early warning indicators?

Assessments are critical for:

- Prioritization in dashboards or reports
- Triggering mitigations or alerts
- Communicating urgency and confidence

---

## ⚙️ Assessment Parameters

Every risk can be assessed across three core dimensions:

| Dimension       | Description                                                                                                                             |
| --------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| **Severity**    | The magnitude of negative impact if the risk materializes. Consider affected objectives like value, access, trust, legal status, etc.   |
| **Likelihood**  | The probability of the risk becoming active in the current or near-future system state. Can be linked to indicators or expert judgment. |
| **Persistence** | Whether the risk is ongoing, temporary, or only present under specific conditions. Also captures whether it is likely to reoccur.       |

Each dimension can be rated using a 3- or 5-step scale. Example:

| Level | Severity   | Likelihood | Persistence |
| ----- | ---------- | ---------- | ----------- |
| 1     | Negligible | Rare       | Temporary   |
| 2     | Moderate   | Possible   | Recurring   |
| 3     | Critical   | Likely     | Persistent  |

(Alternative scales: Low / Medium / High / Very High / Extreme)

---

## 🔁 Indicator Integration

If the risk is **quantitative** or **hybrid**, link live or historical indicators:

- Assign **weights** to each linked indicator
- Use threshold logic (e.g. 7-day moving average crosses X)
- Highlight **deviation from goal** rather than absolute values

---

## 🧠 Qualitative Judgement

For qualitative risks:

- Use a **structured review** format or guided checklist
- Compare against similar risks with known outcomes
- Involve experts in governance, security, legal, etc.

---

## 🗂️ Example Output

Every assessment must include a reference to the risk it evaluates via `riskId`.
This ensures traceability, versioning, and compatibility with automated processing.

```yaml
assessment:
  riskId: R:DECREASING_YIELD # ← Required: must match a valid risk ID
  date: 2025-05-29 # ← Optional: for version tracking
  assessedBy: Analyst-Team A # ← Optional: who performed the assessment
  severity: CRITICAL
  likelihood: POSSIBLE
  persistence: PERSISTENT
  riskStatus: ESCALATING # ← Optional: high-level risk state
  triggeredMeasures: # ← Optional: connected mitigation actions
    - M:REALLOCATE_CAPITAL
  indicators:
    - id: I:UTILIZATION_RATIO
      weight: 0.6
    - id: I:LENDING_APY_TREND
      weight: 1.0
  notes: >
    Yield erosion is already observable. However, user migration is still low,
    indicating early-stage manifestation. Risk is structural and recurring.
```

---

## 📌 Usage Tips

- Document **why** a score was chosen, not just the score
- Review assessments **periodically** or when indicators change
- Always cross-link to **measures** that aim to reduce severity or likelihood

# 📄 Risk Template

Each risk is defined in its own Markdown file using the following structure. This format is both human-readable and machine-parsable, allowing use in dashboards, rule engines, or documentation.

The goal is to capture not only the **what**, but also the **why**, **who**, and how behind each risk.

Fields marked with **(optional)** can be skipped to create a quick, initial version of the risk entry. These can later be completed for a more detailed assessment.

---

## 📝 Quick Version

To quickly document a risk, you only need to complete:
- id
- title
- category
- type
- description

The other sections can then be filled in later, based on your priorities or resources.

---

## 🧩 Metadata

```yaml
id: RISK-001
title: Example Risk Title
category: CONTRACT             # One of the values from `categories.md`
type: HYBRID                   # One of: QUANTITATIVE / QUALITATIVE / HYBRID
scopes:                        # (optional)
  - TRADE                      # One or more from `scopes.md`
  - APPLICATION
owners:                        # (optional)
  - PROTOCOL_TEAM              # One or more from `owners.md`
investmentImpact:              # (optional)
  - objective: VALUE
    direction: DECREASE
    goal: INCREASE             # Desired direction (e.g., lower cost, higher yield)
  - objective: TRUST
    direction: DECREASE
    goal: INCREASE
measures:                      # (optional)
  - id: M:SUBSTITUTION
  - id: M:HEDGING

```

---

## 🧠 Description

Clearly define the risk. What exactly can go wrong? What is the core issue that makes this a threat or vulnerability?

---

## 🧭 Context (optional)

Give background.
Why does this risk exist in the first place? What makes it relevant in Web3 or in this particular setup?

Examples:
- Technical decisions
- Governance structure
- Economic design
- User behavior

---

## 📈 Indicators (optional)

Indicators are defined in a separate file and linked to this risk by ID. Use this section to show the link explicitly here.

---

## 🛠 Measures (optional)

Measures are defined in a separate file and linked to this risk by ID. Use this section to show the link explicitly here.

---

## 🧮 Assessment (optional)

Provide a concise evaluation of the risk in terms of severity, likelihood, and persistence.  
This section is meant to help prioritize risks and guide decision-making.

Indicators may be linked to this risk to support a more data-driven assessment.  
Each linked indicator represents a possible signal or measurement for this risk becoming active.

- If a risk has **one indicator**, it is assumed to carry **100% relevance** for triggering this risk.
- If **multiple indicators** are used, they are **collectively weighted**, and each contributes to the likelihood of the risk in practice.

You may also include qualitative remarks on:
- Persistence over time
- Accumulation with other risks
- External dependencies or dynamic thresholds

---

## 🔗 Related Risks (optional)

List other risks that are similar, derived from this one, or that may compound its effect.

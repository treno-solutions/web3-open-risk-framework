# 🗻Web3 Open Risk Framework

An open-source structure for mapping and understanding crypto-native risks – from smart contracts to governance failures.

---

## 🔍 Why We Built This

Web3 has unlocked a new world of financial autonomy and innovation,  
but it also introduces complex, layered, and often opaque risks.

We've seen:
- Cross-chain bridges exploited.
- Stablecoins losing their peg and triggering systemic effects.
- Governance processes subject to manipulation.
- Users signing opaque transactions without proper validation.

Despite this, most tools still reduce risk to a simplistic score, a badge, or a compliance checkbox.

This framework was developed to address a critical gap:  
the absence of structured, transparent methodologies for understanding risk in decentralized systems.  
It aims to move beyond vague slogans like "do your own research" —  
towards a framework that systematically answers:
- What are the risks?
- What can go wrong?
- How can it occur?
- Where does it occur?
- Who is responsible?
- What are the potential consequences?
- What are the potential measures? *(Note: Not all mitigation details are published for security reasons.)*

We originally built this to support our own risk analysis.  
Now we're sharing it — for those who want to approach risk with clarity, consistency, and accountability.

---

## 🧭 Purpose

This is not a risk catalog – it's the foundation to build your own. Use it to think in layers, assign responsibility, and connect risks to action.
It helps teams and individuals understand Web3 risks in a structured, reusable, and transparent way – without relying on hype or opaque scoring models.

👉 We also explore many of these risks in practice on our [Treno.Finance Blog](https://treno.finance), where we regularly analyze DeFi mechanisms, failure cases, and risk patterns.

---

## 🧱 What's Included

This framework includes:

- 📂 **Risk Categories**  
  A classification system to group risks by scope and origin.

- 🧮 **Risk Types**  
  Distinguishes between measurable risks, structural risks, and mixed types.

- 🔁 **Scope of Action**  
  Tags to describe in which part of the system a risk occurs or becomes relevant.

- 🎯 **Investment Objectives Model**  
  A tagging system to express how a risk affects value, yield, liquidity, or trust.

- 🛡 **Risk Owner Model**  
  A layered model to determine who can act or intervene.

- 🧾 **Risk Template**  
  A Markdown format for consistently documenting individual risks.

- 📊 **Indicator Template**  
  Defines how to link measurable metrics or behavioral signals to each risk.

- 🛠 **Measure Template**  
  Standardizes how mitigation strategies are described, evaluated, and linked to risks.

- 🫆 **Risk Assessment Guide**  
  Provides a model for rating severity, likelihood, and persistence – plus integration with indicators.

---

## 📚 File Overview

This repository is organized by function. Each file defines a reusable part of the framework:

| File                                      | Purpose                                                                 |
|-------------------------------------------|-------------------------------------------------------------------------|
| [`categories.md`](./categories.md)        | Defines the eight core **Risk Categories**, each with a clear scope     |
| [`types.md`](./types.md)                  | Differentiates **quantitative**, **qualitative**, and **hybrid** risks  |
| [`scopes.md`](./scopes.md)                | Specifies where a risk is triggered – e.g., **TRADE**, **GOVERNANCE**, etc. |
| [`objectives.md`](./objectives.md)        | Maps risks to **investment objectives** like value, yield, or trust     |
| [`owners.md`](./owners.md)                | Defines a layered model of **Risk Owners** and their capabilities       |
| [`risk.md`](./risk.md)                    | A complete Markdown **template** to document an individual risk         |
| [`indicator.md`](./indicator.md)          | Describes how to define **signals** and **metrics** that track a risk   |
| [`measure.md`](./measure.md)              | Describes how to define a **measure** to mitigate a risk                |
| [`assessment.md`](./assessment.md)        | Outlines how to assess risks using structured methods — either qualitatively or supported by quantitative indicators |
| [`philosophy.md`](./philosophy.md)        | Describes the **methodology**, **principles**, and external **influences** behind this framework |
| [`terminology.md`](./terminology.md)      | Defines key terms and concepts used throughout the framework for consistent understanding and usage |


Each component is designed to be forked, extended, or integrated into your own catalog or application.

---

## 🧰 Use Cases

- Crypto asset due diligence  
- DeFi protocol risk monitoring  
- Governance transparency  
- Research and education  
- Internal risk dashboards and tooling  
- Strategy development for allocators and asset managers

---

## 🧑‍💻 Who Should Use This

Whether you're:

- Building an analytics platform  
- Designing a safer protocol  
- Managing capital in Web3  
- Or trying to understand where the real risks lie

This repository offers a pragmatic, extensible foundation for structured risk reasoning.

> **Disclaimer:** This repository contains the _framework_ only. A full risk catalog, indicator data, or live dashboards are **not** included.

---

## 💡 How to Use

Fork, clone, or integrate this framework into your stack.  
Document risks, assign owners, track indicators, and communicate more clearly what matters.

You can adapt the templates to suit your internal structure or application design – or contribute back.

**Quick Start:**
Not all template sections are mandatory.
Start simple by filling out only the essential fields (id, title, category, type, and description) for a rapid initial assessment. Expand to a detailed analysis later by completing the optional sections.

See [`risk.md`](./risk.md) for details on required and optional fields.

---

## 📄 License

This framework is shared under a permissive non-commercial license.

This work is licensed under the **Creative Commons Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)** license.  
You may use, adapt, and build on this material **for non-commercial purposes**, with proper attribution.  
See [`LICENSE.md`](./LICENSE.md) for full terms.

---

## 🚧 Project Status

This is an evolving framework. It reflects ongoing research, protocol analysis, and real-world usage.  
Feedback, contributions, and extensions are welcome via GitHub Issues or Pull Requests.

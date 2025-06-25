# 🗻 Web3 Open Risk Framework

A comprehensive, open-source framework for Web3 risk assessment and management.

## Overview

The Web3 Open Risk Framework provides a structured methodology for identifying, analyzing, and mitigating risks in decentralized systems. This framework serves as the foundation for various implementations and can be adapted to different use cases and requirements.

This is not a risk catalog – it's the foundation to build your own. Use it to think in layers, assign responsibility, and connect risks to action. It helps teams and individuals understand Web3 risks in a structured, reusable, and transparent way without relying on hype or opaque scoring models.

## Features

- **Comprehensive Methodology**: Complete risk assessment approach
- **Standardized Templates**: Consistent structure for risks, indicators, and assessments
- **JSON Schemas**: Validation rules for data integrity
- **Professional Documentation**: Detailed guides and examples
- **Open Source**: Creative Commons Attribution 4.0 International License

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines.

## Code of Conduct

This project adheres to a [Code of Conduct](CODE_OF_CONDUCT.md). Please read it before contributing.

## License

This framework is licensed under the Creative Commons Attribution 4.0 International License.

## Contact

For questions about the framework:

- **GitHub Issues:** Use the Issues page for technical discussions
- **Email:** info@treno.solutions (for general inquiries)

## Acknowledgments

Thank you to all contributors who help improve the Web3 Open Risk Framework and make it accessible to the broader community!

---

## 🔍 Why We Built This

Web3 has unlocked a new world of financial autonomy and innovation, but it also introduces complex, layered, and often opaque risks.

We've seen:
- Cross-chain bridges exploited
- Stablecoins losing their peg and triggering systemic effects
- Governance processes subject to manipulation
- Users signing opaque transactions without proper validation

Despite this, most tools still reduce risk to a simplistic score, a badge, or a compliance checkbox.

This framework was developed to address a critical gap: the absence of structured, transparent methodologies for understanding risk in decentralized systems. It aims to move beyond vague slogans like "do your own research" towards a framework that systematically answers:

- What are the risks?
- What can go wrong?
- How can it occur?
- Where does it occur?
- Who is responsible?
- What are the potential consequences?
- What are the potential measures? *(Note: Not all mitigation details are published for security reasons.)*

We originally built this to support our own risk analysis. Now we're sharing it — for those who want to approach risk with clarity, consistency, and accountability.

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
  A layered model to determine who is responsible and can act or intervene for a certain risk.

- 🧾 **Risk Template**  
  A Markdown format for consistently documenting individual risks.

- 📊 **Indicator Template**  
  Defines how to link more concrete and more measurable metrics or behavioral signals to each risk.

- 🛠 **Measure Template**  
  Standardizes how mitigation strategies are described, evaluated, and linked to risks.

- 🫆 **Risk Assessment Guide**  
  Provides a model for rating likelihood and financial impact (the two key axes for risk assessment and risk matrices), with optional support for persistence and integration with risk indicators.

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
| [`indicator.md`](./indicator.md)          | Describes how to define more concrete and more **measurable metrics** or **behavioral signals** for each risk |
| [`measure.md`](./measure.md)              | Describes how to define a **measure** to mitigate a risk                |
| [`assessment.md`](./assessment.md)        | Outlines how to assess risks using methods (either qualitatively or supported by quantitative indicators) and using Likelihood and Financial Impact |
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

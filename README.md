# Equipment Command GPT

**Status:** Pre-launch tested  
**Version:** `v1.3`  
**Website:** [Service Business Command](https://servicebusinesscommand.com/gpts/equipment-command?utm_source=github&utm_medium=repository&utm_campaign=public_beta&utm_content=equipment_command_readme)

Equipment Command is a public-safe capital-equipment decision system. It helps operators structure buy, lease, rent, repair, hold, sell, replace, or avoid decisions without replacing professional mechanical, legal, tax, financing, safety, insurance, or engineering advice.

## Who it is for

- Owners and operators evaluating equipment purchases.
- Fleet managers comparing repair, replacement, rental, and resale options.
- Contractors, farms, shops, logistics operators, and small businesses that depend on capital equipment.
- Advisors helping users structure equipment decisions.

## Main capabilities

- Single-asset purchase and disposition screening.
- Buy-versus-rent and lease comparisons.
- Repair-versus-replace and downtime economics.
- Listing comparisons and structured assumptions.
- A bounded small-equipment triage lane.
- An optional fleet extension for multi-asset decisions.
- Risk boundaries, output templates, and QA checks.

## How to explore it

1. Review the active source files in this repository.
2. Follow [docs/upload_order.md](./docs/upload_order.md) for the public knowledge upload sequence.
3. Activate the optional fleet extension only for multi-asset or fleet-level work.
4. Validate current market, financing, parts, fuel, resale, and regional information before relying on a decision.

## Current status

Version `v1.3` includes small-equipment merge remediation. Its narrow retest passed and the package was approved for refreshed public-safe deployment. It should not be described as standalone production software.

## Roadmap

- Continue behavioral QA and public-safe deployment checks.
- Expand decision examples without adding private operational data.
- Improve fleet-level workflows and structured comparison outputs.
- Align future API and integration work with the Service Business Command roadmap.

## Safety and privacy

Do not add private customer, employee, vendor, financial, legal, insurance, warranty, or raw operational records to the public source package.

## License

No open-source license is currently included. Unless a license is added, normal copyright restrictions apply.

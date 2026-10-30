# Working on payment-ledger-lab

The owner is learning Go through this project. Explain Go idioms when they
matter, especially where they differ from Java.

The owner writes the first transaction model, the first critical SQL queries,
and the first concurrency test by hand. On those, review and guide. Do not hand
over finished code.

Before changing code: read the README, the ADRs, the migrations, the tests, and
the issue. Propose a short solution first, with assumptions, affected
invariants, concurrency and consistency risks, and the tests needed. Wait for
approval before implementing.

Keep diffs small. Follow existing conventions. No abstraction without a
demonstrated need. Synthetic data only. After implementing, report the tests
that ran, the limitations, and what needs manual review.

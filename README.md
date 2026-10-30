# payment-ledger-lab

A double-entry ledger for fictitious accounts, built to be correct under
concurrency, idempotent under retries, and auditable.

> **Status:** work in progress. Not production software. All data is synthetic.
> No real card processing, no PAN/CVV storage.

## Goals

- Transfers recorded as immutable, balanced journal entries in one commit.
- No negative balance under concurrent transfers, when the account forbids it.
- Idempotency keys: a retried request never moves money twice, and a reused key
  with a different payload is rejected.
- Money as integers in the currency's minor unit. Never `float`.
- Transfer events published through a transactional outbox.

## Running locally

Requirements: Go 1.27+, Docker with Compose.

```sh
make db-up     # start PostgreSQL
make test      # run the test suite
make lint      # go vet + staticcheck
make db-down   # stop PostgreSQL
```

## Design decisions

See [docs/adr](docs/adr).

## Known limitations

To be written as the project evolves.

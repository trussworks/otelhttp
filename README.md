# otelhttp

*This repo is archived.* Recent updates to open-telemetry-go-contrib
have rendered it obsolete.

This is a copy from [opentelemetry-go-contrib](https://github.com/open-telemetry/opentelemetry-go-contrib/tree/main/instrumentation)

The README there says, in part

> The last place instrumentation should be hosted is here in this repository. Maintaining instrumentation here hampers the development of OpenTelemetry for Go and therefore should be avoided.

There have been multiple PRs to improve the net/http instrumentation
that have not been merged for months and so, in typical go fashion, we
have to re-implement it ourselves.

[otelhttp](https://github.com/open-telemetry/opentelemetry-go-contrib/tree/main/instrumentation/net/http/otelhttp)

as of [v.0.26.1](https://github.com/open-telemetry/opentelemetry-go-contrib/commit/7876cd14dc5f09765205caa0fb420fafe23141aa)

This copy does not create separate packages for the test and
example code, and so did not copy the `go.{mod,sum}` files from those
directories.


## Setup

1. You will need go and pre-commit installed
1. run `pre-commit install && pre-commit install-hooks`

### Running the tests

    go test ./...

### Checking CI

Install [act](https://github.com/nektos/act)

To test what happens on a PR

    act pull_request



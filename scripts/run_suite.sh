#!/usr/bin/env bash
set -e


# Run an individual test suite if the TEST_SUITE environmental variable is set.
if [ -z "$TEST_SUITE" ]; then
    TEST_SUITE=""
fi

CMD="robot --console verbose --outputdir /reports /test_suites/$TEST_SUITE" # Run ALL test cases
# CMD="robot --console verbose --outputdir /reports --test Are_there_any_ducks_here /test_suites/$TEST_SUITE" # Run a single test case

echo ${CMD}

``${CMD}``

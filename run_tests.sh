#!/usr/bin/env bash

docker run --rm \
           -e USERNAME="Patrick Vermillion" \
           --net=host \
           -v "$PWD/output":/output \
           -v "$PWD/test_suites":/test_suites \
           -v "$PWD/scripts":/scripts \
           -v "$PWD/reports":/reports \
           -v "$PWD/resources":/resources \
           -v "$PWD/env":/env \
           -v "$PWD/dev/shm":/dev/shm \
           --security-opt seccomp:unconfined \
           --shm-size "2g" \
           ypasmk/robot-framework
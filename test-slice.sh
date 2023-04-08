#! /bin/bash

if ! [[ -x slice ]]; then
    echo "program slice executable does not exist"
    exit 1
fi

tester/run-tests.sh -d tests-slice

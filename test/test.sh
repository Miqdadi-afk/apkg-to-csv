#!/usr/bin/env bash

./bin/apkg-to-csv test/test.apkg > test/__compare_test.csv

cmp --silent test/test.csv test/__compare_test.csv || STATUS=$?

if [[ $STATUS -eq 0 ]]; then
  echo "Tests passed"
  rm test/__compare_test.csv
else
  echo "Tests failed: Files not equal"
fi

exit $STATUS

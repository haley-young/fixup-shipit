#! /bin/bash

for commit in $(git rev-list main..test-workflow); do
  MESSAGE=$(git log --format=%B -n 1 $commit | cat -)
  if [[ "$MESSAGE" =~ ^fixup!\s.*$ ]]; then
    echo "got here?!"
    exit 1
  fi
done

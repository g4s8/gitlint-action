#!/bin/sh

set -e

gitlint \
  --path=${GITHUB_WORKSPACE} \
  --subject-regex="$1" \
  --since="$2"

echo "::set-output name=errors::$?"

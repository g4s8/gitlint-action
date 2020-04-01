#!/bin/sh

gitlint \
  --path=${GITHUB_WORKSPACE} \
  --subject-regex="$1" \
  --since="$2"

ret=$?
echo "::set-output name=errors::$ret"

exit $ret

#!/usr/bin/env bash

cat <<- EOF > "$(bsb -where)/../lib/es6/package.json"
{"type":"module"}
EOF

#!/usr/bin/env bash
# Fetch lpe_sdk documentation pages for reference
set -euo pipefail

mkdir -p "$(dirname "$0")/../docs-fetched"
OUTDIR="$(dirname "$0")/../docs-fetched"

curl -L https://pub.dev/documentation/lpe_sdk/latest/ -o "$OUTDIR/lpe_sdk_index.html"
curl -L https://pub.dev/documentation/lpe_sdk/latest/learmond/ -o "$OUTDIR/learmond_index.html"
curl -L https://pub.dev/documentation/lpe_sdk/latest/learmond/presentCardButton.html -o "$OUTDIR/presentCardButton.html"

echo "Downloaded lpe_sdk docs to $OUTDIR"

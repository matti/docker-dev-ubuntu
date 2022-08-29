#!/usr/bin/env bash
set -Euo pipefail

echo "hang"
exec tail -f /dev/null

#!/usr/bin/env bash
set -euo pipefail

echo "Installing tool versions from .tool-versions..."
mise install

echo "mise setup complete!"

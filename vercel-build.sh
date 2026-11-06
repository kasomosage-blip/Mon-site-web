#!/bin/sh
set -eu

cecil_version="9.28.0"
cecil_path="/tmp/cecil"
cecil_url="https://github.com/Cecilapp/Cecil/releases/download/${cecil_version}/cecil-linux-x64"
cecil_sha256="4d7050590869700676e58ac53a348cccc33513fafe1e23ba70425a9e137b066c"
production_host="${VERCEL_PROJECT_PRODUCTION_URL:-mon-site-web-bay.vercel.app}"

curl --fail --location --silent --show-error "$cecil_url" --output "$cecil_path"
printf '%s  %s\n' "$cecil_sha256" "$cecil_path" | sha256sum --check --status
chmod +x "$cecil_path"
"$cecil_path" build --baseurl="https://${production_host%/}/"

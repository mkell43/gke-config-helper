#!/usr/bin/env sh

OS="$(uname -s | awk '{print tolower($0)}')"
export OS
ARCH="$(arch)"

if [ "$ARCH" = "x86_64" ]; then
  ARCH="amd64"
fi
export ARCH

mkdir -p "$HOME"/bin

curl https://github.com/mkell43/gke-config-helper/releases/latest/download/gke-config-helper_"${OS}"_"${ARCH}" \
  --output "$HOME"/bin/gke-config-helper \
  --location \
  --silent

chmod +x "$HOME"/bin/gke-config-helper

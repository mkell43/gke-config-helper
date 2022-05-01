#!/usr/bin/env bash

systems=(linux darwin)
archs=(amd64 arm64)

for SYSTEM in "${systems[@]}"; do
  for ARCH in "${archs[@]}"; do
    env GOOS="${SYSTEM}" GOARCH="${ARCH}" go build -o gke-config-helper_"${SYSTEM}"_"${ARCH}"
  done
done

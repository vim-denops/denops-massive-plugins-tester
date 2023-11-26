#!/bin/bash -u

mkdir -p denops
for i in $(seq 100); do
  mkdir -p denops/denops-massive-plugins-tester-$i
  echo "export function main() {}" > denops/denops-massive-plugins-tester-$i/main.ts
done

Container image for D2 - a modern diagram scripting language that turns text to diagrams.

## Usage

### Render D2 diagram to SVG

```shell
docker run --rm -it --volume=$(pwd):/workspace ghcr.io/r-xs-fi/d2 example.d2 example.svg
```

Outputs:
```console
success: successfully compiled example.d2 to example.svg in 36.350921ms
```

## Supported platforms


| OS    | Architecture  | Supported | Example hardware |
|-------|---------------|-----------|-------------|
| Linux | amd64 | ✅       | Regular PCs (also known as x64-64) |
| Linux | arm64 | ✅       | Raspberry Pi with 64-bit OS, other single-board computers, Apple M1 etc. |
| Linux | arm/v7 | ❌ (Prebuilt image not available.)       | Raspberry Pi with 32-bit OS, older phones |
| Linux | riscv64 | ❌ (Prebuilt image not available.)       | More exotic hardware |

## FAQ

### Why not use the upstream image?

[Upstream](https://github.com/terrastruct/d2/blob/50d048f0a86f5076196e7906026ff20fefaf692d/ci/release/docker/Dockerfile) is ~ 700 MB, is weird and its build process is weird.

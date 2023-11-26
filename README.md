# denops-massive-plugins-tester

To test denops plugin startup time with massive plugins.

## Usage

Clone the repository and generate plugins with `./generate.sh`.
Add the working tree to `runtimepath`in your`vimrc`.

> [!WARNING]
> Do NOT forget to remove this repository from `runtimepath` after testing.
> At least for denops v5 or earlier, it will cause a slowdown in startup time.

# Git linter GitHub action

This action uses Docker image based on
[go-gitlint](https://github.com/llorllale/go-gitlint/)
CLI tool.

## Inputs

### `patter`

Use `pattern` to override commit subject patter.
Default value is `\(?#\d+\)? - .+`.

### `since`

Spicify start date for linting git messages.

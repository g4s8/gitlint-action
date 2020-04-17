![Git linter](https://github.com/g4s8/gitlint-action/workflows/Git%20linter/badge.svg)

# Git linter GitHub action

This action uses Docker image based on
[go-gitlint](https://github.com/llorllale/go-gitlint/)
CLI tool.

## Usage

Create new GitHub actions workflow at `.github/workflows/gitlint.yaml`
with this content:
```yaml
name: Git linter
"on": [push, pull_request]
jobs:
  gitlint:
    runs-on: ubuntu-latest
    steps:
      - name: Check out the code
        # checkout code before linting
        uses: actions/checkout@v2
        with:
          # fetch 20 commits (increase it if needed)
          fetch-depth: '20'
      - name: Lint
        # run linter (use latest version here)
        uses: g4s8/gitlint-action@0.2
        with:
          # see `inputs` section for more details
          since: "2020-03-30"
```

## Inputs

### `patter`

Use `pattern` to override commit subject patter.
Default value is `\(?#\d+\)? - .+`.

### `since`

Spicify start date for linting git messages. The format is `YYYY-MM-DD` (e.g. `2020-03-30`).
Default is `1970-01-01`.

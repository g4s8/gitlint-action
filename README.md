![Git linter](https://github.com/g4s8/gitlint-action/workflows/Git%20linter/badge.svg)

# Git linter GitHub Action

This action uses a Docker image based on the [go-gitlint](https://github.com/llorllale/go-gitlint/) CLI tool.

## Usage

Create a new GitHub Actions workflow at `.github/workflows/gitlint.yaml` with this content:
```yaml
name: Git linter
on: [push, pull_request]
jobs:
  gitlint:
    runs-on: ubuntu-latest
    steps:
      - name: Check out the code
        # checkout code before linting
        uses: actions/checkout@v2
        with:
          # fetch 20 commits (increase if needed)
          fetch-depth: '20'
      - name: Lint
        # run linter (use latest version here)
        uses: g4s8/gitlint-action@0.2
        with:
          # see `Inputs` section for more details
          since: "2020-03-30"
```

## Inputs

### `pattern`

Override the commit subject pattern.
The default value is `\(?#\d+\)? - .+`.

### `since`

Specify the start date for linting git messages. The format is `YYYY-MM-DD` (e.g. `2020-03-30`).
The default value is `1970-01-01`.

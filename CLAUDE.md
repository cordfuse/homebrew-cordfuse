<!-- parent: librarian -->
# homebrew-cordfuse

Homebrew tap for Cordfuse tools. One formula per Cordfuse project.

## Structure

```
Formula/          # One .rb file per tool
  cortex-setup.rb
```

## Adding a formula

Copy an existing `.rb` as a template. Each project's release pipeline updates its own formula via the `homebrew.yml` workflow in that project's repo.

## Tap

`brew tap cordfuse/cordfuse` → maps to this repo (`cordfuse/homebrew-cordfuse`).

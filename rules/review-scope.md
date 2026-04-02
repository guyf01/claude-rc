# Review Scope

When reviewing code, determine what to review in this order:

1. **User-specified scope** — if the user names specific files, a PR, or a commit range, use that.
2. **Staged changes** — run `git diff --cached --name-only`. If there are staged files, review those.
3. **Unstaged changes** — run `git diff --name-only`. If there are unstaged changes, review those.
4. **Branch diff** — if no staged or unstaged changes and on a feature branch, find the divergence point: `git diff $(git merge-base HEAD main)...HEAD --name-only`.
5. **On main with no changes** — ask the user for a commit SHA or range to review.

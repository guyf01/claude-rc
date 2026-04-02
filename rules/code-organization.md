# Code Organization Rules

## File Scope

- Each file should have one logical domain. If a file needs section comments to separate concerns, split it into separate files and folders.

## Shared Code

- When creating a function, consider whether it belongs in the current file's domain or is a shared generic utility. If generic, move it to a shared utilities location.
- Same for constants — if a constant is generic and shared across domains, place it where it logically belongs, not in the file that first needed it.

## Structure

- Structure should be easy to extend, not pre-built for extensions. Organize cleanly so adding new things has an obvious place, but don't create empty folders or abstractions for hypothetical features.

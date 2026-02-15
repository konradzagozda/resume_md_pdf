# AGENTS Guide

## Project Scope

This repository contains two source resumes:
- `workshop/resume.md`
- `workshop/styled_resume.md`

Generated PDFs should be created next to their source Markdown files:
- `workshop/resume.pdf`
- `workshop/styled_resume.pdf`

## Markdown to PDF

Preferred direct command for Markdown to PDF:

`npx --yes md-to-pdf <file>.md`

Examples:
- `npx --yes md-to-pdf workshop/resume.md`
- `npx --yes md-to-pdf workshop/styled_resume.md`

Preferred scripted command:
- `./scripts/build-pdf.sh workshop/resume.md`
- `./scripts/build-pdf.sh workshop/styled_resume.md`

## Continuous PDF Regeneration (Watcher)

Use the watcher to rebuild PDFs automatically on file changes:

`./scripts/watch-pdfs.sh`

Behavior:
- Runs an initial build for both resume files.
- Watches `workshop/resume.md` and `workshop/styled_resume.md`.
- Rebuilds only the changed file.
- Prints timestamped logs to stdout.
- Prints failures to stderr.

## PDF to Markdown

When converting a PDF resume to Markdown, use Markdownify MCP:

`mcp__markdownify__pdf-to-markdown`

Warning: output quality can vary; best for extracting raw text.

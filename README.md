# Resume PDF Workflow

## Editing workflow

- Edit `workshop/resume.md` for raw resume text/content.
- Edit `workshop/styled_resume.md` when you want styles applied to both:
  - The generated PDF
  - The Markdown preview
- Write styles in CSS.

## Generate PDF once

From the repository root, run:

```bash
./scripts/build-pdf.sh workshop/resume.md
./scripts/build-pdf.sh workshop/styled_resume.md
```

This uses:

```bash
npx --yes md-to-pdf <file>.md
```

## Watch and auto-regenerate PDFs

To continuously watch both Markdown files and regenerate PDFs on every save:

```bash
./scripts/watch-pdfs.sh
```

Watched files:
- `workshop/resume.md`
- `workshop/styled_resume.md`

Output:
- Initial build for both files when watcher starts
- Timestamped stdout logs for each rebuild
- Error logs to stderr if generation fails

Example log lines:

```text
$ ./scripts/watch-pdfs.sh
[2026-02-15 18:05:52] Initial PDF build started
[2026-02-15 18:05:52] Rebuilding workshop/resume.md
```

## Justfile targets

You can use `just` shortcuts from the repository root:

```bash
just compare_contents
just generate_pdfs
just watch_pdfs
```

What they do:
- `compare_contents`
  - Runs `validation/test_content_match.py`
  - Strips styles/HTML from `workshop/styled_resume.md`
  - Compares against `workshop/resume.md` (ignoring whitespace differences)
  - Produces:
    - `validation/artifacts/styled_resume_stripped.md`
    - `validation/artifacts/diff.txt`
  - Informational only: emits a warning when content differs
- `generate_pdfs`
  - Builds both resume PDFs
- `watch_pdfs`
  - Starts the continuous PDF watcher

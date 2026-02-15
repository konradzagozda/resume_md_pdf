# Resume PDF Workflow

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

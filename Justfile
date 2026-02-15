set shell := ["bash", "-cu"]

compare_contents:
    python3 -m pytest -s validation/test_content_match.py

generate_pdfs:
    ./scripts/build-pdf.sh workshop/resume.md
    ./scripts/build-pdf.sh workshop/styled_resume.md

watch_pdfs:
    ./scripts/watch-pdfs.sh

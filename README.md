# {{SUPPLEMENT_TITLE}}

> **Status:** {{STATUS}}
> **Domain:** IHE Devices (DEV)
> **Revision:** {{REVISION}}

## About This Document

{{DESCRIPTION}}

## Quick Start

### Editing

The supplement source files are in `AsciiDoc_Source/` as AsciiDoc (`.adoc`) files.

- `AsciiDoc_Source/main.adoc` — the master document (includes all other files)
- `AsciiDoc_Source/metadata.adoc` — supplement metadata (title, status, revision)

### Local Preview

If you have Asciidoctor installed:

```bash
make html    # Render HTML
make pdf     # Render PDF
make all     # Both
make clean   # Remove build output
```

Or use Docker:

```bash
make docker-html
make docker-pdf
```

### Viewing

GitHub renders AsciiDoc natively — just click any `.adoc` file to read it in your browser.

### Built Output (HTML + PDF)

Every push to `main` (and every PR) triggers a GitHub Actions build that produces HTML and PDF versions. To download them:

1. Go to the **Actions** tab
2. Click the latest successful build
3. Scroll to **Artifacts** and download `supplement-output`

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

*This repo was created from [DEV.supplement-template](https://github.com/IHE/DEV.supplement-template).*

# Migration note — unresolved AsciiDoc structure

This directory currently holds **two** AsciiDoc entry points. That is deliberate
and temporary.

| File | What it is |
|---|---|
| `main.adoc` | The supplement template's scaffold. Pulls in `metadata.adoc`, has the standard section skeleton, and is what `.github/workflows/publish.yml` builds. |
| `memls.adoc` | The real MEMLS content, converted from `.docx` via pandoc. Flat output: carries its own title block and references images under `extracted-media-memls/`. |

The two have not been reconciled. `main.adoc` is still the build entry point, so
**the published output does not yet contain the MEMLS content.**

## What needs deciding

1. Whether `memls.adoc` becomes `main.adoc`, or gets included from it.
2. If included: strip the duplicate title block from `memls.adoc`, since
   `main.adoc` + `metadata.adoc` already render one.
3. Whether images move to the repo's `images/` directory (which `metadata.adoc`
   points at via `:imagesdir: ../images`) or stay under `extracted-media-memls/`.
   They were left in place so the converted file still renders on its own —
   moving them means rewriting every `image:` reference in `memls.adoc`.

Delete this note once the structure is settled.

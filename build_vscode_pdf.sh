#!/usr/bin/env bash
set -euo pipefail

INPUT_MD="${1:-CppDeveloper_Ru.md}"
OUTPUT_PDF="${2:-${INPUT_MD%.md}.pdf}"
OUTPUT_HTML="${INPUT_MD%.md}.vscode.html"
DOC_TITLE=""

pandoc "${INPUT_MD}" --defaults pandoc_vscode.yaml --metadata "title=${DOC_TITLE}" -o "${OUTPUT_HTML}"

chromium \
  --headless \
  --disable-gpu \
  --no-sandbox \
  --print-to-pdf-no-header \
  --no-pdf-header-footer \
  "--print-to-pdf=${OUTPUT_PDF}" \
  "file://$(realpath "${OUTPUT_HTML}")"

if command -v exiftool >/dev/null 2>&1; then
  exiftool -overwrite_original -Title= "${OUTPUT_PDF}" >/dev/null
fi

rm "${OUTPUT_HTML}"

echo "Generated ${OUTPUT_PDF} (via ${OUTPUT_HTML})"

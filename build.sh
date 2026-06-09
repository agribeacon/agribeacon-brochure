#!/usr/bin/env bash
# Regenerate the A4 PDF brochure from print.html using headless Google Chrome.
set -euo pipefail
cd "$(dirname "$0")"

CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
if [ ! -x "$CHROME" ]; then
  CHROME="$(command -v google-chrome || command -v chromium || command -v chromium-browser || true)"
fi
if [ -z "${CHROME:-}" ] || { [ ! -x "$CHROME" ] && ! command -v "$CHROME" >/dev/null 2>&1; }; then
  echo "❌ Không tìm thấy Google Chrome/Chromium. Cài Chrome hoặc set biến CHROME=/đường/dẫn." >&2
  exit 1
fi

mkdir -p dist
"$CHROME" --headless --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="dist/agribeacon-brochure.pdf" \
  --print-to-pdf-no-header \
  "file://$PWD/print.html"

echo "✅ Đã tạo: dist/agribeacon-brochure.pdf"

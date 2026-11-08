#!/usr/bin/env bash
# Up thêm file vào một release đã có (vd bản Windows xong sau) và cập nhật SHA256SUMS của release đó.
#
# Cách dùng:
#   scripts/add-assets.sh 2.0.5 /Volumes/UGREEN/Hido/dist/windows/Hido-2.0.5-windows-amd64-setup.exe \
#                               /Volumes/UGREEN/Hido/dist/windows/Hido-2.0.5-windows-amd64.zip
#
# Tên file phải đúng dạng Hido-<v>-<nền tảng>-<kiến trúc>.<đuôi>; app chỉ cài bản có dòng khớp trong SHA256SUMS.
set -euo pipefail

REPO="hidovpn/hido"
VERSION="${1:?Thiếu số phiên bản, vd: 2.0.5}"; shift
TAG="v${VERSION#v}"; VERSION="${TAG#v}"
[[ $# -gt 0 ]] || { echo "Thiếu file cần up"; exit 1; }

for f in "$@"; do
  [[ -f "$f" ]] || { echo "Không thấy $f"; exit 1; }
  [[ "$(basename "$f")" == "Hido-$VERSION-"* ]] || { echo "Sai tên: $(basename "$f") (phải là Hido-$VERSION-…)"; exit 1; }
done

TMP=$(mktemp -d)
gh release download "$TAG" -R "$REPO" -p SHA256SUMS -D "$TMP" 2>/dev/null || touch "$TMP/SHA256SUMS"
for f in "$@"; do
  n=$(basename "$f")
  grep -v "  $n\$" "$TMP/SHA256SUMS" > "$TMP/s" || true
  (cd "$(dirname "$f")" && shasum -a 256 "$n") >> "$TMP/s"
  mv "$TMP/s" "$TMP/SHA256SUMS"
done
sort -k2 "$TMP/SHA256SUMS" -o "$TMP/SHA256SUMS"
cat "$TMP/SHA256SUMS"

gh release upload "$TAG" -R "$REPO" --clobber "$@" "$TMP/SHA256SUMS"

# Thêm dòng tải về cho file mới vào cuối bảng trong ghi chú phát hành
gh release view "$TAG" -R "$REPO" --json body --jq .body > "$TMP/body.md"
for f in "$@"; do
  n=$(basename "$f")
  grep -q "$n" "$TMP/body.md" && continue
  case "$n" in
    *setup.exe) p="Windows x64 — bộ cài / installer";;
    *amd64.zip) p="Windows x64 — portable";;
    *.dmg)      p="macOS";;
    *.apk)      p="Android";;
    *)          p="";;
  esac
  row="| $p | [\`$n\`](https://github.com/$REPO/releases/download/$TAG/$n) |"
  last=$(grep -n '^| ' "$TMP/body.md" | tail -1 | cut -d: -f1)
  awk -v r="$row" -v n="$last" '{print} NR==n{print r}' "$TMP/body.md" > "$TMP/b2"
  mv "$TMP/b2" "$TMP/body.md"
done
gh release edit "$TAG" -R "$REPO" --notes-file "$TMP/body.md" >/dev/null
echo "Xong: https://github.com/$REPO/releases/tag/$TAG"

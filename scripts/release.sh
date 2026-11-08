#!/usr/bin/env bash
# Đăng một phiên bản Hido lên GitHub Releases (hidovpn/hido).
#
# Cách dùng:
#   scripts/release.sh 2.0.6                 # lấy file từ /Volumes/UGREEN/Hido/dist
#   scripts/release.sh 2.0.6 /đường/dẫn/dist -y
#
# Thư mục dist cần có (thiếu file nào thì bỏ qua file đó):
#   android/Hido-<v>-android-{arm64-v8a,armeabi-v7a,x86_64}.apk   (scripts/build_android_release.sh)
#   macos/Hido-<v>-macos-arm64.dmg                                 (scripts/build_macos_release.sh)
#   windows/Hido-<v>-windows-amd64-setup.exe, Hido-<v>-windows-amd64.zip
#
# Tên file PHẢI giữ đúng dạng trên và phải có SHA256SUMS: trình tự cập nhật trong app tìm đúng tên
# Hido-<v>-<đuôi> ở release mới nhất của hidovpn/hido và đối chiếu SHA-256 trước khi cài.
#
# Ghi chú phát hành lấy từ mục [VERSION] trong CHANGELOG.md — viết CHANGELOG trước rồi chạy.
set -euo pipefail

REPO="hidovpn/hido"
VERSION="${1:?Thiếu số phiên bản, vd: 2.0.6}"
DIST="${2:-/Volumes/UGREEN/Hido/dist}"
YES="${3:-}"
TAG="v${VERSION#v}"
VERSION="${TAG#v}"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUT="$ROOT/dist/$TAG"

command -v gh >/dev/null || { echo "Cần cài GitHub CLI: brew install gh"; exit 1; }
gh release view "$TAG" -R "$REPO" >/dev/null 2>&1 && { echo "Release $TAG đã tồn tại"; exit 1; }

FILES=(
  "android/Hido-$VERSION-android-arm64-v8a.apk"
  "android/Hido-$VERSION-android-armeabi-v7a.apk"
  "android/Hido-$VERSION-android-x86_64.apk"
  "macos/Hido-$VERSION-macos-arm64.dmg"
  "windows/Hido-$VERSION-windows-amd64-setup.exe"
  "windows/Hido-$VERSION-windows-amd64.zip"
)

rm -rf "$OUT"; mkdir -p "$OUT"
for f in "${FILES[@]}"; do
  if [[ -f "$DIST/$f" ]]; then cp "$DIST/$f" "$OUT/"; echo "✓ $(basename "$f")"; else echo "– bỏ qua (không có) $f"; fi
done
ls "$OUT"/Hido-* >/dev/null 2>&1 || { echo "Không có file nào để up"; exit 1; }

# APK: đúng versionName, ký bằng khoá phát hành (bản ký debug có đuôi .dev, không cập nhật đè được)
AAPT=$(ls -d /Volumes/UGREEN/Hido/toolchains/android-sdk/build-tools/*/aapt2 2>/dev/null | tail -1 || true)
for apk in "$OUT"/*.apk; do
  [[ -f "$apk" && -n "$AAPT" ]] || continue
  line=$("$AAPT" dump badging "$apk" | awk 'NR==1')
  [[ "$line" == *"name='com.hido.vpn'"* ]] || { echo "⚠️  $(basename "$apk") không phải com.hido.vpn: $line"; exit 1; }
  [[ "$line" == *"versionName='$VERSION'"* ]] || { echo "⚠️  $(basename "$apk") sai phiên bản: $line"; exit 1; }
done

(cd "$OUT" && shasum -a 256 Hido-* > SHA256SUMS)

# Ghi chú phát hành = mục tương ứng trong CHANGELOG.md
NOTES="$OUT/notes.md"
awk -v v="$VERSION" '
  $0 ~ "^## \\[" v "\\]" {on=1; next}
  on && /^## \[/ {exit}
  on && /^\[.*\]: / {exit}
  on {print}' "$ROOT/CHANGELOG.md" > "$NOTES"
[[ -s "$NOTES" ]] || { echo "CHANGELOG.md chưa có mục [$VERSION]"; exit 1; }
{
  echo
  echo "### Tải về / Downloads"
  echo "| Nền tảng / Platform | File |"
  echo "|---|---|"
  for f in "$OUT"/Hido-*; do
    n=$(basename "$f")
    case "$n" in
      *arm64-v8a.apk)   p="Android (arm64-v8a — hầu hết điện thoại / most phones)";;
      *armeabi-v7a.apk) p="Android (armeabi-v7a — máy 32-bit / 32-bit phones)";;
      *x86_64.apk)      p="Android (x86_64)";;
      *macos-arm64.dmg) p="macOS Apple Silicon";;
      *setup.exe)       p="Windows x64 — bộ cài / installer";;
      *amd64.zip)       p="Windows x64 — portable";;
      *)                p="";;
    esac
    echo "| $p | [\`$n\`](https://github.com/$REPO/releases/download/$TAG/$n) |"
  done
  echo
  echo "SHA-256: xem / see \`SHA256SUMS\`."
} >> "$NOTES"

echo; cat "$OUT/SHA256SUMS"; echo; cat "$NOTES"; echo
if [[ "$YES" != "-y" ]]; then
  read -r -p "Đăng $TAG lên $REPO? [y/N] " ok
  [[ "$ok" == [yY] ]] || { echo "Huỷ."; exit 0; }
fi

# README trỏ link tải trực tiếp theo phiên bản — đổi sang bản mới
OLD=$(grep -oE 'releases/download/v[0-9][^/]*/' "$ROOT/README.md" | head -1 | sed -E 's|releases/download/v([^/]*)/|\1|')
if [[ -n "$OLD" && "$OLD" != "$VERSION" ]]; then
  for r in "$ROOT/README.md" "$ROOT/README.vi.md"; do
    sed -i '' -e "s/Hido-$OLD-/Hido-$VERSION-/g" -e "s|download/v$OLD/|download/v$VERSION/|g" -e "s/\*\*v$OLD\*\*/**v$VERSION**/g" "$r"
  done
fi
git -C "$ROOT" add -A
git -C "$ROOT" diff --cached --quiet || git -C "$ROOT" commit -q -m "Hido $TAG"
git -C "$ROOT" push -q origin HEAD

gh release create "$TAG" -R "$REPO" \
  --title "Hido $TAG" \
  --notes-file "$NOTES" \
  --latest \
  "$OUT"/Hido-* "$OUT/SHA256SUMS"

echo "Xong: https://github.com/$REPO/releases/tag/$TAG"

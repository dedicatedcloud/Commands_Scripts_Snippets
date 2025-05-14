Here's an updated **Bash script** that:

* **Extracts** a ZIP file into a temporary directory
* **Renames** the `images` folder to a UUID
* **Renames all images inside the folder to UUIDs** (with preserved extensions)
* **Moves the updated files to the same directory as the original ZIP**
* **Skips re-zipping** – just outputs the renamed folder and images ready for use
* **Prevents filename collisions** during extraction (no overwrite prompts)

This version assumes you're running it on Linux with GNU tools installed.

```bash
#!/bin/bash

set -euo pipefail

# === INPUT ===
ZIP_FILE="$1"
WORK_DIR=$(mktemp -d)
UUID_BIN=$(command -v uuidgen || echo "")

# === VALIDATION ===
if [[ ! -f "$ZIP_FILE" ]]; then
  echo "Error: Zip file not found: $ZIP_FILE"
  exit 1
fi

if [[ -z "$UUID_BIN" ]]; then
  echo "Error: uuidgen not found. Please install uuid-runtime."
  exit 1
fi

# === UNZIP ===
unzip -q "$ZIP_FILE" -d "$WORK_DIR"

# === FIND 'images' FOLDER ===
IMG_DIR=$(find "$WORK_DIR" -type d -iname "images" | head -n 1)

if [[ -z "$IMG_DIR" ]]; then
  echo "Error: No images folder found."
  exit 1
fi

# === RENAME IMAGES FOLDER ===
UUID_FOLDER=$(uuidgen)
NEW_IMG_DIR="$(dirname "$IMG_DIR")/$UUID_FOLDER"
mv "$IMG_DIR" "$NEW_IMG_DIR"

# === RENAME ALL IMAGE FILES INSIDE ===
find "$NEW_IMG_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.webp" \) | while read -r IMG_FILE; do
  EXT="${IMG_FILE##*.}"
  NEW_NAME="$(uuidgen).${EXT,,}"
  mv "$IMG_FILE" "$(dirname "$IMG_FILE")/$NEW_NAME"
done

# === COPY TO ORIGINAL LOCATION ===
cp -r "$NEW_IMG_DIR" "$(dirname "$ZIP_FILE")"

# === CLEANUP ===
rm -rf "$WORK_DIR"

echo "✅ Done. Renamed folder and images copied to: $(dirname "$ZIP_FILE")/$UUID_FOLDER"
```

---

### ✅ Example usage:

```bash
chmod +x rename_zip_images.sh
./rename_zip_images.sh example.zip
```

---

### 🔐 Notes:

* Files are renamed one-by-one to UUIDs so **no duplicates** occur.
* Output goes into the same directory as the original ZIP file.
* Existing folders or files with the same UUID in that directory may be overwritten.

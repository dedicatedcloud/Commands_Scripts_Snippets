#!/bin/bash

# Set root directory (you can modify this if needed)
ROOT_DIR="."

# Image extensions to match (case insensitive)
IMAGE_EXTENSIONS="jpg|jpeg|png|webp|gif|bmp"

# Find all files in folders ending with "-images"
find "$ROOT_DIR" -type f | while read -r file; do
    dir=$(dirname "$file")
    base=$(basename "$file")
    ext="${base##*.}"
    name="${base%.*}"

    # Skip if not in a folder that ends with -images
    if [[ "$dir" != *-images* ]]; then
        continue
    fi

    # Skip non-image files
    if ! [[ "$ext" =~ ^($IMAGE_EXTENSIONS)$ ]]; then
        continue
    fi

    # Get the top-level parent folder ending in -images
    folder_name=$(basename "$(echo "$dir" | grep -o '[^/]*-images' | head -n 1)")

    # Only rename if not already renamed
    if [[ "$base" != "$folder_name-"* ]]; then
        new_name="${folder_name}-${name}.${ext}"
        new_path="${dir}/${new_name}"

        # Check if destination already exists
        if [[ -e "$new_path" ]]; then
            echo "Skipping existing: $new_path"
        else
            echo "Renaming: $file -> $new_path"
            mv "$file" "$new_path"
        fi
    fi
done

#!/bin/bash

# Directory to process (default is current dir)
DIR="${1:-.}"

# Find all zip files safely
find "$DIR" -type f -name '*.zip' -print0 | while IFS= read -r -d '' zipfile; do
    # Get filename without extension
    base=$(basename "$zipfile" .zip)
    dir=$(dirname "$zipfile")
    target_dir="$dir/$base"

    # Auto-increment if folder exists
    counter=1
    while [[ -d "$target_dir" ]]; do
        target_dir="$dir/${base}_$counter"
        ((counter++))
    done

    echo "Extracting: $zipfile -> $target_dir"

    # Create and extract
    mkdir -p "$target_dir"
    unzip -q "$zipfile" -d "$target_dir"
done

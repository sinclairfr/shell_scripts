#!/bin/bash

# Usage: ./script.sh [--dry-run]
output_file="no_audio_files.txt"
dry_run=false

# Check for --dry-run flag
if [[ "$1" == "--dry-run" ]]; then
    dry_run=true
    echo "Running in DRY RUN mode. No files will be deleted."
fi

> "$output_file"  # Clear the output file

for file in *.mp4; do
    # Skip if no .mp4 files are found
    [[ -e "$file" ]] || continue

    # Check for audio streams
    audio_streams=$(ffprobe -v error -select_streams a -show_entries stream=codec_type -of csv=p=0 "$file")
    
    if [ -z "$audio_streams" ]; then
        echo "$file" >> "$output_file"
        if $dry_run; then
            echo "[DRY RUN] Would delete: $file"
        else
            rm -f "$file"
            echo "Deleted: $file"
        fi
    fi
done

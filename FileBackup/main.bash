#!/bin/bash

# Specify the directory to backup
source_directory="/path/to/source_directory"

# Specify the backup destination
backup_directory="/path/to/source_directory"

# Create a timestamp for the backup folder name
timestamp=$(date +%Y%m%d%H%M%S)
backup_folder="$backup_directory/backup_$timestamp"

# Check if the source directory exists
if [ ! -d "$source_directory" ]; then
  echo "Source directory not found: $source_directory"
  exit 1
fi

# Check if the backup directory exists
if [ ! -d "$backup_directory" ]; then
  echo "Backup directory not found: $backup_directory"
  exit 1
fi

# Create the backup folder
mkdir -p "$backup_folder"

# Copy files to the backup folder
cp -r "$source_directory" "$backup_folder"

echo "Backup created at: $backup_folder"

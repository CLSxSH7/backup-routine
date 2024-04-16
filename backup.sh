#!/bin/bash

#######################
#   BACKUP ROUTINE    #
#######################

destination="/mnt/backup"
if [ ! -d "$destination" ]; then
    echo "Error: The destination directory does not exist."
    exit 1
fi

# FILES TO BACKUP (change if necessary):
backup_files="/var/www/html"

day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

echo "Performing backup of $backup_files to $destination/$archive_file"

# COMPRESS USING TAR:
tar czf "$destination/$archive_file" "$backup_files"
if [ $? -ne 0 ]; then
    echo "Error creating the backup file."
    exit 1
fi

echo "Backup completed! Thank you!"

# INTEGRITY VERIFICATION (HASH):
echo "md5sum for verification:"
md5sum "$destination/$archive_file"

# LISTING FILES IN $destination TO CHECK FILE SIZES:
ls -lh "$destination"

#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Ikkita katalog kiriting"
    exit 1
fi

source=$1
backup=$2

if [ ! -d "$source" ]; then
    echo "Manba katalog topilmadi"
    exit 1
fi

mkdir -p "$backup"

date=$(date +"%Y-%m-%d_%H-%M-%S")

tar -czf "$backup/backup_$date.tar.gz" "$source"

echo "$(date) - Backup yaratildi" >> backup.log

echo "Backup muvaffaqiyatli bajarildi"

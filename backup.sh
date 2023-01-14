#!/bin/bash

src_dir=/home/ubuntu/script_practice
trt_dir=/home/ubuntu/backups

current_timestamps=$(date "+%y-%m-%d-%H-%M-%S")

echo "The backup is taken on $current_timestamps"
backup_file=$trt_dir/$current_timestamps.tgz
echo "the backup_file is $backup_file"

tar czf $backup_file --absolute-names $src_dir

echo "backup completed!!"


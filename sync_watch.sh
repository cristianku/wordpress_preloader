#!/bin/bash

# Set the source directory to watch for changes.
SOURCE_DIR="/Users/cristianku/GitHub/wordpress_preloader/14bodhi_custom_loade"

# Path to the rsync script.
RSYNC_SCRIPT="/Users/cristianku/GitHub/wordpress_preloader/rsync.sh"

# Path to the logfile where output will be stored.
LOGFILE="/Users/cristianku/GitHub/wordpress_preloader/sync_watch.log"

# Run fswatch and execute the rsync script on file change events.
nohup sh -c "fswatch -o '$SOURCE_DIR' | while read change; do echo 'Change detected in $SOURCE_DIR, starting rsync script...'; sh '$RSYNC_SCRIPT' >> '$LOGFILE' 2>&1; echo 'rsync script completed at $(date)' >> '$LOGFILE'; done" &


#!/bin/sh
echo "Starting backuper..."

chmod -R +x /etc/periodic/

exec "$@"

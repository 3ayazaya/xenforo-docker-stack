#!/bin/sh

echo "Backup database..."

mysqldump -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE \ 
  > /backups/xenforo-db-backup-$(date +\%Y-\%m-\%d-\%H-\%M-\%S).sql
  
echo "Backup site source..."

tar -czf /xenforo /backups/xenforo-backup-$(date +\%Y-\%m-\%d-\%H-\%M-\%S).tar.gz 

echo "Send backups to s3..."

s3cmd put --ssl --access_key=$S3_ACCESS_KEY --secret_key=$S3_SECRET_KEY --host=$S3_HOST \
  --host-bucket=$S3_HOST_BUCKET -r /backups s3://$S3_BUCKET_NAME

echo "Done!"

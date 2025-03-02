FROM d3fk/mysql-s3-backup:stable

COPY entrypoint.sh /entrypoint.sh
COPY crontab /etc/crontab 

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "crond", "-f", "-l", "2" ]

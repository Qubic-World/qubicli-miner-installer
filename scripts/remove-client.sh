# stop service
systemctl stop qli
# remove service definition
rm /etc/systemd/system/qli.service
# reload systemd
systemctl daemon-reload
# remove all related files
rm -R /q
rm /var/log/qli.log

#! /bin/bash
mv /tmp/puma.service /etc/systemd/system/puma.service
systemctl enable puma

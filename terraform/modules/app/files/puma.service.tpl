[Unit]
Description=Puma HTTP Server
After=network.target

[Service]
Type=simple
WorkingDirectory=/home/appuser/reddit
Environment=DATABASE_URL=${database_url}
ExecStart=/usr/local/bin/puma
Restart=always

[Install]
WantedBy=multi-user.target

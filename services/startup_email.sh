sudo apt-get install mailutils

crontab -e

# And paste following line to crontab settings:

@reboot  echo "Server has restarted "`hostname` | mail -s "System Restart" example@example.com

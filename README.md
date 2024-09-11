# Spookdev-MOTD (edited by Skrepysh)

![MOTD-Screenshot](screenshot.png)

Custom MOTD scripts based off of PlexMOTD. This is running on Ubuntu, and the scripts are split into manageable chunks.

## Installation
1. Run the motd install script: 
```
curl -L https://raw.githubusercontent.com/Skrepysh/motd/master/install.sh > motd_install.sh && sudo chmod 777 motd_install.sh && sudo ./motd_install.sh
```
3. Change `/etc/update-motd.d/colors.txt` to your liking.
4. Optionally change `PrintLastLog` to `no` in `/etc/ssh/sshd_config`.

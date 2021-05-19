# chia-systemd - autostart chia and plotman

These systemd scripts are intended to start the necessary chia and plotman services automatically upon system (re)start.

## Installation
* Copy the files to the corresponding folders on your system drive (/)
* Adjust the values of /etc/default/chia to start the services you need
* Adjust the command in CHIA_CLEANUP_CMD so that if removes all temporary plots upon shutdown (so you don't get orphans). Comment it out to deactivate.
* Run 'sudo chmod 755 /usr/local/bin/chia-service'
* Run 'sudo systemctl daemon-reload'
* Run 'sudo systemctl enable chia' to enable auto-start at boot time
* Run 'sudo systemctl start chia' to start the service manually
* Run 'sudo systemctl status chia' to see if all went as planned and also check all the processes that are spawned

## Usage
### chia
Well, there's not much to say, it's like you've started it manually.
### plotman
The script will start a 'screen' process for each enabled plotman service.

If you have PLOTMAN_START_PLOT enabled, it will start a screen session named 'plot' with 'plotman plot'. You can access it via 'screen -r plot'. (If you want to keep it running, just press ctrl-a then ctrl-d to detach from the virtual terminal).

Same applies for PLOTMAN_START_ARCHIVE. If it's enabled, the screen session 'archive' will be started. Access it via 'screen -r archive'.

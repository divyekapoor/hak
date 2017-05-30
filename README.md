# hak
A Node.js script to work with docker repositories.

# Installation

   ```sh
   $ ./install.sh
   ```

# Usage

   ```sh
   $ hak
   hak: A simple hackathon project starter

   Usage: hak install|on|off|up|uninstall
   Usage: hak clone jaequery/honeybadger.git project-name

   hak install   - Install docker, docker-compose, docker-machine on the machine
   hak on|off    - Turn on|off the docker service
   hak clone     - Clone a github project (eg. honeybadger) and update the VIRTUAL_ENV variable in docker-compose.yml
   hak up        - Issue docker-compose up -d
   hak uninstall - Uninstall hak from the machine
   hak test      - Test the operation of hak on your machine

   ```

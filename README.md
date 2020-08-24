# FreshInstall
Files needed for a fresh install

Files:
* init.vim - nvim config file
* setup.sh - setup script
* cinnamon_desktop - desktop configurations for Cinnamon

Steps:
1. Run `setup.sh`
2. Re-attach home directory follow this [link](https://www.howtogeek.com/442101/how-to-move-your-linux-home-directory-to-another-hard-drive/)
3. Open `init.vim` and run plug install
4. Set up Rclone
5. Install Display Link Driver for docking station
  a. Download driver from [here](https://www.displaylink.com/downloads/ubuntu)
  b. `cd Downloads`
  c. `unzip <file>`
  d. `sudo chmod +x <file>`
  e. `sudo ./<file>`

# Linux Notes

`uname` = gives system info
`uname --help` = gives system info along with options and assistance
`history` - shows all commands run in this shell session
`!<history number>` - after history, will recall the command from the list

### **File and Directory Management**
- `ls` - List directory contents
- `cd` - Change directory
- `pwd` - Print working directory
- `mkdir` - Make a new directory
- `rmdir` - Remove empty directory
- `rm` - Remove files or directories
- `rm -r` - removes a specific empty file
- `cp` - Copy files or directories
- `mv` - Move or rename files or directories
- `touch` - Create an empty file
- `find` - Search for files in a directory hierarchy
- `locate` - Find files by name
- `cat` - Concatenate and display file content
- `more` - View file content page by page
- `less` - View file content with scrolling
- `head` - Display the beginning of a file
- `tail` - Display the end of a file
- `chmod` - Change file permissions
- `chown` - Change file ownership
- `chgrp` - Change group ownership

### **System Information**
- `uname` - Print system information
- `top` - Task manager
- `htop` - Interactive process viewer (requires installation)
- `ps` - Report current processes
- `df` - Display disk space usage
- `du` - Estimate file space usage
- `free` - Display memory usage
- `uptime` - Show how long the system has been running
- `whoami` - Show the current user
- `id` - Show user and group information
- `hostname` - Show or set the system's hostname
- `lscpu` - Display CPU architecture information

### **User and Group Management**
- `useradd` - Add a new user
- `usermod` - Modify a user
- `userdel` - Delete a user
- `groupadd` - Add a new group
- `groupdel` - Delete a group
- `passwd` - Change user password
- `groups` - Show user’s groups
- `who` - Show who is logged in
- `w` - Show who is logged in and their activities

### **Networking**
- `ping` - Send ICMP echo requests to network hosts
- `ifconfig` - Configure network interfaces (deprecated, use `ip` command instead)
- `ip` - Show/manipulate routing, devices, and tunnels
- `netstat` - Network statistics
- `ss` - Utility to investigate sockets
- `traceroute` - Trace the route packets take to a network host
- `nslookup` - Query DNS records
- `curl` - Transfer data from or to a server
- `wget` - Download files from the web
- `scp` - Secure copy files between hosts
- `ssh` - Secure shell to remote machines
- `ftp` - File transfer protocol client
- `nc` - Netcat, utility for network connections

### **Package Management**
- `apt-get`/`apt` (Debian/Ubuntu-based systems) - Package management
- `yum` (CentOS/RHEL-based systems) - Package management
- `dnf` (Fedora/RHEL 8+) - Package management
- `zypper` (openSUSE) - Package management
- `pacman` (Arch Linux) - Package management
- `dpkg` - Debian package manager

### **File Compression and Archiving**
- `tar` - Archive files
- `gzip` - Compress files (GZIP)
- `gunzip` - Decompress GZIP files
- `zip` - Create compressed zip archives
- `unzip` - Extract files from zip archives
- `bzip2` - Compress files (BZIP2)
- `bunzip2` - Decompress BZIP2 files

### **Process Management**
- `kill` - Send signal to a process
- `killall` - Kill processes by name
- `pkill` - Kill processes based on attributes
- `nice` - Set the priority of a process
- `renice` - Change the priority of a running process
- `bg` - Resume a stopped process in the background
- `fg` - Bring a background process to the foreground
- `jobs` - List active jobs
- `nohup` - Run a command immune to hangups

### **Disk and File System Management**
- `mount` - Mount a file system
- `umount` - Unmount a file system
- `fdisk` - Partition a disk
- `mkfs` - Create a file system
- `fsck` - File system consistency check
- `parted` - A command-line partition editor

### **Logs and System Monitoring**
- `dmesg` - Print boot-up messages or system messages
- `journalctl` - Query system logs (for systems using `systemd`)
- `logrotate` - Rotate system logs
- `vmstat` - Report virtual memory statistics
- `iostat` - Report CPU and I/O statistics
- `sar` - Collect, report, or save system activity information

### **Security**
- `sudo` - Execute commands as another user
- `su` - Switch user
- `chmod` - Change file permissions
- `chown` - Change file ownership
- `iptables` - Manage Linux firewall
- `ufw` - Uncomplicated Firewall (Ubuntu-based systems)

### **File Searching**
- `grep` - Search text using patterns
- `find` - Search for files in a directory hierarchy
- `locate` - Find files by name
- `updatedb` - Update the database for `locate`

### **Text Editors**
- `nano` - Easy-to-use terminal text editor
- `vim` - Advanced text editor
- `emacs` - Another popular text editor

You can always check the manual page for a command using `man <command>` (e.g., `man ls` for the `ls` command).

`sudo apt update -y`
`man <name of command you want to know about>`
`sudo apt install nginx -y`
`sudo systemctl status nginx`

If you ever get locked out of the terminal- try using `q`
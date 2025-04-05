# Linux Week 2: File Systems and User Management

## Linux Filesystem Overview

In Linux, **everything is treated as a file** — even hardware and commands like `ls`. The Linux filesystem starts with the **root directory `/`**, which contains essential subdirectories.

### Key Directories in Root

- **/bin** – Essential binaries like `ls`, `cp`, `mv`.
- **/boot** – Bootloader and kernel files.
- **/dev** – Device files like `/dev/sda`.
- **/etc** – System config files (network, users).
- **/home** – User home directories (`/home/username`).
- **/lib** – Libraries for system binaries.
- **/lib64** – 64-bit libraries.
- **/media** – Mount point for USB/CD.
- **/mnt** – Temporary mount point.
- **/opt** – Optional third-party software.
- **/proc** – Virtual FS for process/system info.
- **/root** – Root user's home directory.
- **/run** – Temp runtime files (like PIDs).
- **/sbin** – System binaries for admins.
- **/srv** – Service-specific data (e.g., web).
- **/sys** – Kernel and hardware info.
- **/tmp** – Temporary files.
- **/usr** – User binaries and docs.
- **/var** – Variable data like logs (`/var/log`).

## User Management

There are three user types:

- **Root user** – Superuser with full access.
- **Normal user** – Limited privileges.
- **System user** – Created for system processes.

### Commands

- `adduser <username>` – Create a new user.
- `su - <username>` – Switch to another user.
- `sudo su -` or `sudo -i` – Get root access.
- `logout` – Logout current user.
- `tail -1 /etc/passwd` – View latest user added.

**User Details in `/etc/passwd`:**

```text
username:encrypted_password:UID:GID:comment:home_directory:shell
```

**Example:**
```
neil:x:500:100:Neil Matthew:/home/neil:/bin/bash
```

### Modify User Info (with `usermod`):

- `usermod -u <UID> <username>` – Change user ID.
- `usermod -g <GID> <username>` – Change group ID.
- `usermod -c "Info" <username>` – Add comment.
- `usermod -L <username>` – Lock user.
- `usermod -U <username>` – Unlock user.

**Passwords** are encrypted and stored in `/etc/shadow`.

- `passwd` – Change current user password.
- `sudo passwd <username>` – Change any user's password (as root).

## Group Management

Groups allow managing multiple users together.

### Group Commands

- `addgroup <groupname>` – Create new group.
- `groupdel <groupname>` – Delete group.
- `groupmod -n <newname> <oldname>` – Rename group.
- `usermod -aG <groupname> <username>` – Add user to group.
- `gpasswd -d <username> <groupname>` – Remove user from group.
- `groups <username>` – List user's groups.

Group info is stored in `/etc/group`.

## File Permissions

Linux uses a permission model for security: `owner`, `group`, `others`.

### View Permissions

- `ls -l` – Shows permissions in format:  
  `-rwxr-xr--`  
  (user, group, others)

### Modify Permissions

- `chmod` – Change file permissions  
  `chmod 755 file.txt` (rwxr-xr-x)
- `chown` – Change file owner  
  `chown user:group file.txt`
- `chgrp` – Change group  
  `chgrp newgroup file.txt`

**Permission Values:**

- `r = 4` (read)
- `w = 2` (write)
- `x = 1` (execute)

Example:
- `chmod 777 file` → Full access to all
- `chmod 644 file` → Owner can read/write; others read-only

## Vim Editor (Vi Improved)

A powerful text editor with four modes:

- **Normal**: Default, navigation
- **Insert**: For typing (`i` to enter)
- **Visual**: For selecting text
- **Command**: For saving/exiting

### Basic Vim Commands

- `vim <filename>` – Open file
- `:q` – Quit
- `:q!` – Force quit
- `:x` or `:wq` – Save and quit
- `:set nu` – Show line numbers
- `:set nonu` – Hide line numbers

---

Happy Linuxing!
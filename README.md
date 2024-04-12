> [!IMPORTANT]
>IF you are installing on a new system install ***you may have some of these files created!!***

These files include:
* .config
* .oh-my-zsh
* fish
* warp-terminal
* zshrc

***FIRST CHECK THERE IS NOT A FILE OR FOLDER IN YOUR HOME DIRECTORY THAT WILL CONFLICT WITH A FILE IN THIS REPOSTITORY***
```bash
cd ~
ls -al 
```

Good return
```bash
total 24
drwx------ 2 johndoe johndoe 4096 Apr 12 22:19 .
drwxr-xr-x 3 root     root     4096 Mar 15 15:09 ..
-rw------- 1 johndoe johndoe   60 Apr 12 22:19 .bash_history
-rw-r--r-- 1 johndoe johndoe  220 Mar 15 15:00 .bash_logout
-rw-r--r-- 1 johndoe johndoe 3523 Mar 15 15:00 .bashrc
-rw-r--r-- 1 johndoe johndoe  807 Mar 15 15:00 .profile
-rw-r--r-- 1 johndoe johndoe    0 Apr 12 20:13 .sudo_as_admin_successful
```

Bad return
```bash
drwxr-x--- 10 johndoe johndoe     4096 Apr 12 17:42 .
drwxr-xr-x  3 root     root         4096 Mar  1 17:12 ..
-rw-------  1 johndoe johndoe      121 Mar  1 17:17 .bash_history
-rw-r--r--  1 johndoe johndoe      220 Mar  1 17:12 .bash_logout
-rw-r--r--  1 johndoe johndoe     3771 Mar  1 17:12 .bashrc
drwx------  5 johndoe johndoe     4096 Mar 25 10:44 .cache
lrwxrwxrwx  1 johndoe johndoe       23 Mar 15 14:52 .config
-rw-r--r--  1 johndoe johndoe       58 Mar  1 17:42 .gitconfig
-rw-------  1 johndoe johndoe       20 Mar 15 15:31 .lesshst
drwxr-xr-x  6 johndoe johndoe     4096 Mar 15 18:50 .local
-rw-r--r--  1 johndoe johndoe        0 Mar  1 17:12 .motd_shown
-rw-r--r--  1 johndoe johndoe      807 Mar  1 17:12 .profile
-rw-r--r--  1 johndoe johndoe       10 Mar  1 17:12 .shell.pre-oh-my-zsh
drwx------  2 johndoe johndoe     4096 Apr 12 12:43 .ssh
-rw-r--r--  1 johndoe johndoe        0 Mar  1 17:12 .sudo_as_admin_successful
-rw-------  1 johndoe johndoe    13656 Apr 12 17:42 .zsh_history
lrwxrwxrwx  1 johndoe johndoe       19 Mar 15 14:50 .zshrc
lrwxrwxrwx  1 johndoe johndoe       22 Mar  1 17:35 warp-terminal
```

When setting up a new system, I've been checking for these files and creating a backup like so:

```bash
mv -r .config .config.bak
mv -r zshrc zshrc.bak
```
This creates a backup of the default files created by your distro incase something does not work or you need to move them into the stow configuration at a later point.

# **Stow Configuration**

### Clone this repository and change the directory to dotfiles
```bash
git clone https://github.com/venengaandrew/dotfiles.git
cd dotfiles
```
### If there is no files conflicting in your home directory, running this command will copy stow all configs into /home/$username
```bash
stow .
```
If everything is successful, stow will not have any output.

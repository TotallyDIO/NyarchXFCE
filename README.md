# NyarchXFCE
Screw it, Its time for another spin to work in :3

# INFO - How to build, what goes where etc.

## Building
To build, do `sudo ./steps.sh`
`profiledef.sh` handles iso name, label, the publisher, file permissions etc...

https://wiki.archlinux.org/title/LightDM#Enabling_autologin
https://man7.org/linux/man-pages/man1/gpasswd.1.html
https://man7.org/linux/man-pages/man8/groupadd.8.html
**/etc/group** IS A FILE, NOT FOLDER!!!!!!
format for groups:
daemon:password:GID:User_list
autologin:x:1002:live
**/etc/gshadow** IS THE SAME!!!!
format for gshadow
group_name:encrypted_password:group_administrators:group_members
autologin:x::live

/usr, /etc are copied to live system
/out is for the ISO
/work is where the files are put
packages.x86_64 is where the script looks to install packages.

# TODO - Notes about what to do, will try to update as I go.
Order of importance:
Critical - must be done to make a working iso
Important - things that make nyarch "nyarch"
Medium - things that can be ignored and done later.

* Make lightdm automatically sign into live & boot calamares - Critical
* Do wallpapers - Important
* add plymout & grub themes - medium 

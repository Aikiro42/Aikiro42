# Making an SSH key
```console
test@TEST:~$ ssh-keygen -t ed25519 -C "your_email@example.com"
Generating public/private ed25519 key pair.
Enter file in which to save the key (/home/aikiro42/.ssh/id_ed25519): my_key
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in my_key
Your public key has been saved in my_key.pub
The key fingerprint is:
SHA256:bH/???????????????????????????????????????? your_email@example.com
The key's randomart image is:
+--[ED25519 256]--+
|     *******     |
|   .ooooo.***SS  |
|  O       O**SSE |
|   .ooooo.***SSE |
|   **********E   |
|   **+   ****    |
|   +++++++++++   |
|     amogus      |
|                 |
+----[SHA256]-----+
test@TEST:~$
```
# Adding the SSH key to Github
```console
test@TEST:~$ cat my_key.pub
ssh-ed25519 ???????????????????????????????/???????/???????????????????????????? your_email@example.com
```
Copypasta `ssh-ed25519 ???????????????????????????????/???????/???????????????????????????? your_email@example.com` when adding an SSH key to your github account.
# Using the SSH Key
```console
test@TEST:~$ eval `ssh-agent -s`
test@TEST:~$ ssh-add my_key
```
Make sure the argued path to the files `my_key` and `my_key.pub` are correct when running `ssh-add`. Yes, the first file has no file extension.
In the case of `test@TEST:~$ ssh-add my_key`, make sure these two files are in the same directory wherein you're running the command.
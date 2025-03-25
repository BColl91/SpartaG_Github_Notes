# SSH and Creating Keys
<br>

Open Git Bash and run the following command to check if you already have an SSH key:

`ls -al ~/.ssh`

If you see files like `id_rsa` and `id_rsa.pub`, you already have a key. Otherwise continue.


Run the following command, replacing "your_email@example.com" with your email:


```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

When prompted to "Enter a file in which to save the key," press Enter to use the default location (`~/.ssh/id_rsa`).

When asked for a passphrase, you can leave it empty (just press Enter) or set one for extra security.

Run:
```
eval `ssh-agent -s`
```
Then add your SSH key to the agent:

```
ssh-add ~/.ssh/id_rsa
```
<br>

### Copy your public key to the clipboard:

`cat ~/.ssh/id_rsa.pub`

<br>

### Add the SSH Key to Your Git Provider

GitHub: Go to GitHub SSH keys → Click New SSH key → Paste the key → Save.

<br>

## Test Your SSH Connection
Run:

`ssh -T git@github.com`

<br>

You can change the URL of the remote repository by:

```
git remote set-url origin <your-ssh-repo-url>
```
<br>

You can check if bash is connected to your github by running:

```
git remote -v
```
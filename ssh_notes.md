# SSH and creating keys
<br>

```ssh-keygen -t rsa -b 4096 -C "your-email-here"

cat <your-key-goes-here>.pub

eval `ssh-agent -s`

ssh-add <private-key-here>

ssh -T git@github.com

git remote -v

git remote set-url origin <your-ssh-repo-url>
```
To write notes on how to set up the key.
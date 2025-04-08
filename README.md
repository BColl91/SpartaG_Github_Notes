# Git and GitHub Notes/Cheatsheet
<br>



This README contains a quick reference guide for common Git and GitHub commands, useful for version control and collaboration in software development projects.

---

## Git Commands

| Command   | Definition    |
|----------------------------|:----------:|
| `git status `| Displays the current status of your git repository, including changes not yet staged, files to be committed, and untracked files |
| `git add .` | Adds all modified files in the directory to the staging area (prepares them to be committed).|
|`git add <file_name>`| Adds a specific file to the staging area (useful for adding individual files). |
| `git add -A` | Stages all modified and deleted files |
| `git commit -m "message"` | Commits the staged changes with a descriptive message (useful for tracking changes) |
| `git commit -a -m "message"` | Commits all tracked changes (skips the need to `git add`) |
| `git push` | Pushes your local commits to the remote repository on GitHub |
| `git push origin <branch_name>` | Pushes to a specific branch on GitHub (useful if working on different branches) |
| `git pull` | Fetches and merges changes from the remote repository to your local repository |
| `git pull origin <branch_name>` | Pulls updates from a specific branch on GitHub |
| `git clone <repository_URL>` | Pulls updates from a specific branch on GitHub |
| `git checkout -b <branch_name>` | Creates and switches to a new branch |
| `git checkout <branch_name>` | Creates and switches to a new branch |
| `git checkout <branch_name>` | Switches to an existing branch |
| `git merge <branch_name>` | Merges changes from one branch into the current branch |
| `git log` | Displays the commit history |
| `git log --oneline` | Shows a condensed view of the commit history with commit hashes |
| `git diff` | Displays the differences between your working directory and the staging area (i.e., what you have changed but not yet staged) |
| `git fetch` | Downloads new data from a remote repository without merging the changes into your local repository (useful for reviewing changes before applying them) |
| `git checkout -- <file_name>` | Discards changes in a specific file (restores it to the state of the last commit) |
| `git reset <file_name>` | Removes a file from the staging area but does not delete the file |
| `git reset --soft HEAD~1` | Undoes the last commit, but keeps your changes in the working directory |
| `git reset --hard HEAD~1` | Undoes the last commit and deletes your changes permanently (use with caution) |
| `git branch -d <branch_name>` | Deletes a local branch (only if it’s already merged) |
| `git branch -D <branch_name>` | Forcefully deletes a local branch, even if it’s unmerged |


---

<br>
<br>

## Other Notes
- Forking a repository on GitHub creates a copy of someone else's repository under your GitHub account.
- After pushing your changes to a new branch on GitHub, you can create a pull request to propose your changes to the original repository.

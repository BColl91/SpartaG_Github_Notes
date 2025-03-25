# Git and GitHub Notes/Cheatsheet

![alt-img external](https://res.cloudinary.com/postman/image/upload/t_user_profile_300/v1742810920/user/dd18b8bdec5f39289d3ba1c8a2747fbb)



This README contains a quick reference guide for common Git and GitHub commands, useful for version control and collaboration in software development projects.

---

## Git Commands

### **Check Git Status**
```
git status
```
- Displays the current status of your git repository, including changes not yet staged, files to be committed, and untracked files.

### **Add Files to Staging Area**
```
git add .
```
- Adds all modified files in the directory to the staging area (prepares them to be committed).
```
git add <file_name>
```

- Adds a specific file to the staging area (useful for adding individual files).
```
git add -A
```

- Stages all modified and deleted files.

### **Commit Changes**
```
git commit -m "message"
```
- Commits the staged changes with a descriptive message (useful for tracking changes).
```
git commit -a -m "message"
```
- Commits all tracked changes (skips the need to `git add`).

### **Push Changes to GitHub**
```
git push
```
- Pushes your local commits to the remote repository on GitHub.
```
git push origin <branch_name>
```
- Pushes to a specific branch on GitHub (useful if working on different branches).

### **Pull Changes from GitHub**
```
git pull
```
- Fetches and merges changes from the remote repository to your local repository.
```
git pull origin <branch_name>
```
- Pulls updates from a specific branch on GitHub.

### **Clone a Repository**
```
git clone <repository_URL>
```
- Pulls updates from a specific branch on GitHub.

### **Create a New Branch**
```
git checkout -b <branch_name>
```
- Creates and switches to a new branch.

### **Switch Branches**
```
git checkout <branch_name>
```
- Switches to an existing branch.

### **Merge Branches**
```
git merge <branch_name>
```
- Merges changes from one branch into the current branch.

### **View Git Log**
```
git log
```
- Displays the commit history.
  ```
  git log --oneline
  ```

- Shows a condensed view of the commit history with commit hashes.

### **View Changes Made**
```
git diff
```
- Displays the differences between your working directory and the staging area (i.e., what you have changed but not yet staged).

---

## GitHub-Specific Commands

### **Fork a Repository**
- Forking a repository on GitHub creates a copy of someone else's repository under your GitHub account.

### **Create a Pull Request (PR)**
- After pushing your changes to a new branch on GitHub, you can create a pull request to propose your changes to the original repository.

### **Fetch Changes**
```
git fetch
```
- Downloads new data from a remote repository without merging the changes into your local repository (useful for reviewing changes before applying them).

---

## Commonly Used Shortcuts

### **Undo Changes**
```
git checkout -- <file_name>
```
- Discards changes in a specific file (restores it to the state of the last commit).

### **Remove a File from Staging Area**
```
git reset <file_name>
```
- Removes a file from the staging area but does not delete the file.

### **Uncommit a Commit**
```
git reset --soft HEAD~1
```
- Undoes the last commit, but keeps your changes in the working directory.
  ```
  git reset --hard HEAD~1
  ```

- Undoes the last commit and deletes your changes permanently (use with caution).

### **Delete a Branch**
```
git branch -d <branch_name>
```
- Deletes a local branch (only if it’s already merged).
  ```
  git branch -D <branch_name>
  ```

- Forcefully deletes a local branch, even if it’s unmerged.


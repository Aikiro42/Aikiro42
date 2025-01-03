# Renaming a git branch locally AND remotely
```sh
# Names of things - allows you to copy/paste commands
old_name=feature/old
new_name=feature/new
remote=origin

# Rename the local branch to the new name
git branch -m $old_name $new_name

# Delete the old branch on remote
git push $remote --delete $old_name

# Or shorter way to delete remote branch [:]
git push $remote :$old_name

# Prevent git from using the old name when pushing in the next step.
# Otherwise, git will use the old upstream name instead of $new_name.
git branch --unset-upstream $new_name

# Push the new branch to remote
git push $remote $new_name

# Reset the upstream branch for the new_name local branch
git push $remote -u $new_name
```

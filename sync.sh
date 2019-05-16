# All the git commands have a \ so as to enforce default behavior.
# This is to get rid of unexpected behavior due to aliasing commands.

# Create a branch to do the merge on.
\git branch temp
# Go to this branch.
\git checkout temp
# Copy over the local changes to the repo.
cp ~/.bashrc bash/bashrc
cp ~/.aliases bash/aliases
cp ~/.vimrc vim/vimrc
# Get the latest changes from origin, but don't pull.
\git fetch origin
# Merge the latest changes from origin into the branch.
\git merge --verbose origin/master

# Determine if there are any unmerged conflicts.
conflict=`git diff --diff-filter=U`

# If there is no conflict, we can go ahead and merge with problems.
if [ -z "$conflict" ]
then
    # Add and then commit all of our changed files.
    \git add *
    \git commit -m "Auto-generated commit from sync."
    # Push those changes to the temp branch, and make it on the server to preserve the current state.
    \git push --set-upstream origin temp
    # Switch back to master and merge in our new branch.
    \git checkout master
    \git pull
    \git merge --verbose -m "Auto-generated merge from sync." temp
    # Delete the temp branch locally and remote since we don't need it anymore.
    \git branch --delete temp
    \git push -d temp
# Otherwise we will need to merge manually and resolve differences.
else
    echo "There were unresolvable conflicts in your version and the remote version.  Please resolve them manually."
    exit -1
fi

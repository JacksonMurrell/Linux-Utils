git branch temp
cp ~/.bashrc bash/bashrc

git merge master

conflict=`git diff --check`

if [ i-z "$conflict" ]
then
    git add
    git commit -m "Auto-generated commit from sync."
    git push
    git checkout master
    git merge temp
    git branch -d temp
    git branch --delete temp
else
    echo "There were unresolvable conflicts in your version and the remote version.  Please resolve them manually."
    exit -1
fi
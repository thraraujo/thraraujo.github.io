# Some Useful Git Commands

## Push a tag to remote 

```
git push origin <tag_name>

# not recommended
git push --tags
```

https://stackoverflow.com/questions/5195859/how-do-you-push-a-tag-to-a-remote-repository-using-git


## Tag to older commit 

```
git tag v1.2 9fceb02

# with message 
git tag -a v1.2 9fceb02 -m "Message here"
```

https://stackoverflow.com/questions/4404172/how-to-tag-an-older-commit-in-git

## Forget deleted branches 

```
git remote prune origin
```

https://stackoverflow.com/questions/5094293/git-remote-branch-deleted-but-still-it-appears-in-branch-a

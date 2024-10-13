# Git Fetch 

I always wandered how I could compare my local and remote repos. Since I 
might have more than one laptop, it is important to keep track of modifications, 
and it would be nice to compare if my local repo is updated with github repo. 

Here is a nice answer from stack overflow. 
* ['git diff' between a remote and local repository](https://stackoverflow.com/questions/11935633/git-diff-between-a-remote-and-local-repository)

Let me reproduce the important part of HieroB's answer -- just notice that in 
my case,  have renamed my branches from *master* to *main*. 

> To compare a local working directory against a remote branch, for example origin/master:
>
>>  `git fetch origin master` This tells git to fetch the branch named 'master'
>>  from the remote named 'origin'. git fetch will not affect the files in your
>>  working directory; it does not try to merge changes like git pull does. 
>>
>>  `git diff --summary FETCH_HEAD` When the remote branch is fetched, it can be
>>  referenced locally via FETCH_HEAD. The command above tells git to diff the
>>  working directory files against FETCHed branch's HEAD and report the
>>  results in summary format. Summary format gives an overview of the changes,
>>  usually a good way to start. If you want a bit more info, use --stat
>>  instead of --summary. 
>>
>>  `git diff FETCH_HEAD -- mydir/myfile.js` If you want to
>>  see changes to a specific file, for example myfile.js, skip the --summary
>>  option and reference the file you want (or tree).
>
> As noted, origin references the remote repository and master references the
> branch within that repo. By default, git uses the name origin for a remote, so
> if you do git clone <url> it will by default call that remote origin. Use git
> remote -v to see what origin points to.

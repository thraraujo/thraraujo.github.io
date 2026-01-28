#!/usr/bin/env bash

# Git repositories
gitRepos=(
    $HOME/.config/dot-files/
    $HOME/.config/scripts/
    $HOME/Work-repos/wiki/
    $HOME/Work-repos/thraraujo.github.io
    $HOME/Work-repos/pySymmPol/
    $HOME/Work-repos/cv-projects-documents/
    $HOME/Work-repos/papers/research-notebooks/
    $HOME/Work-repos/papers/fisica-geral/
    $HOME/Work-repos/papers/slavnov/
)

echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"
for repo in "${gitRepos[@]}"
do
    test -n "$(git -C $repo status --porcelain)" && echo "   >> MODIFIED :: $repo" #|| echo "<< NOTHING :: $repo"
done
echo "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"

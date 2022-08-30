#!/bin/bash

# remove whatever inisde the directory except from .git dir;
# rm –r ../raw_build/*;
# parece que no hace falta;
# ten cuidado con eliminar archivos en disco;

# copy the files to the destination folder
cp -r ./_site/* ../raw_build;

# Save where you are and cd to other dir
pushd ../raw_build;
# command --key

    pwd;

    git add .

    # random txt & num
    randomTxt=$(cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-4} | head -n 1);
    randomNum=$(cat /dev/urandom | tr -dc '[:digit:]' | fold -w ${1:-4} | head -n 1);

    echo $randomTxt;
    echo $randomNum;

    # create the commit
    git commit -m "$randomTxt$randomNum";

    # push to github

    git remote -v;
    # View the existing remotes
    # origin  https://github.com/user/repo-1.git (fetch)
    # origin  https://github.com/user/repo-1.git (push)

    # sudo git remote set-url origin git@github.com:albertoest0054/rawindoor.skate.git;
    # hecho a mano;

    git push -f --set-upstream origin master;

# Get back where you were at the beginning.
popd;

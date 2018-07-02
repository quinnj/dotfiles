# /etc/skel/.bash_profile

PATH=$PATH:~/julia/usr/bin

function git-pull-all {
    find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;
}

function gs {
    git status
}

function gb {
    git branch
} 

function gl {
    git log
}

function gm {
    git checkout master
}

function gp {
    git pull origin master
}

function gf {
    git fetch
}

function ga {
    git add .
}

function gcp {
    git cherry-pick $1
}

function gc {
    git checkout $1
}

function gcb {
    git checkout -b $1
}

function docker-stop-all {
    docker stop $(docker ps -a -q);
}

function docker-rm-all {
    docker rm $(docker ps -a -q);
}

function docker-into {
    docker run -it --entrypoint /bin/bash $1
}

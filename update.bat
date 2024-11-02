@echo off
cd /d %~dp0
IF EXIST .git (
    echo setup uz bol
) ELSE (
    echo setupujem
    git init .
    git remote add origin "https://github.com/JurkoDev/mc_server_1.20.git"
    git fetch origin
    git checkout -f master 
)
echo updatujem
git fetch
git checkout -f origin/master
git checkout master
git pull

#!/bin/bash
REPO_ROOT="`dirname \"$0\"`"
rm -rf $REPO_ROOT/venv
python3 -m venv $REPO_ROOT/venv
echo "export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES" >> $REPO_ROOT/venv/bin/activate
. $REPO_ROOT/venv/bin/activate
pip3 install --upgrade pip
pip3 install -r $REPO_ROOT/requirements.txt --force
ansible-galaxy collection install -r $REPO_ROOT/collections/requirements.yml -p $REPO_ROOT/collections --force
pre-commit install -c $REPO_ROOT/.pre-commit-config.yaml

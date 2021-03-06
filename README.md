# Vagrant Skeleton

The purpose of this repo is to quickly start up new virtual machines as quickly as possible.

## Getting Started

Download and configure the repository:

1. Choose a local domain, for example: example.local
1. Use that domain in the following instructions:
1. `git clone git@github.com:josephdpurcell/vagrant-skeleton.git example.local`
1. `cd example.local`
1. Reconfigure the machine:
    1. Do a string replace of all "vm-project-name" in the repo to "example"
    1. Set the IP address in the Vagrantfile to an unused IP

Instantiate the code as your new project:

1. `rm -rf .git`
1. `git init`
1. `git remote add origin <url-to-your-project>`
1. `git add .`
1. `git commit -a -m "Initial commit"`
1. `git push -u origin master`

Start up the repository:

1. `vagrant up`

## Todos

1. How to customize with ad-hoc provision scripts, e.g. an install.sh for my custom project

# Vagrant Skeleton

The purpose of this repo is to quickly start up new virtual machines as quickly as possible.

## Getting Started

Download and configure the repository:

1. Choose a local domain, for example: example.local
1. Use that domain in the following instructions:
1. git clone git@github.com:josephdpurcell/vagrant-skeleton.git example.local
1. cd example.local
1. Do a string replace of all "vm-project-name" in the repo to "example"
1. Bump the IP address in the Vagrantfile, e.g. change 10.33.100.10 to 10.33.100.11

Start up the repository:

1. vagrant up
1. vagrant ssh

## Todos

1. How to customize with ad-hoc provision scripts, e.g. an install.sh for my custom project
1. How to quickly add aptitude repos

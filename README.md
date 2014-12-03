## Introduction ##

this is local development environment for ansible 

Inside boot2docker, use fig to start the env. ansible + ubuntu base

    $ fig -f fig-ansible.yml run ansible bash

or using shell script

    $ ./start.sh

Inside ansible
    
    $ ./update.sh # update hosts/id_rsa for permssion
    $ ansible all -m setup 
 
Exercise

    $ cd exercise
    $ ansible-playbook proxy.yml -e "http_proxy=http://<proxy>"
    $ ansible-playbook exer3.yml
    $ ansible-playbook exer4.yml
    $ ansible-playbook exer5.yml
    
## Reference ##

* slides: http://www.slideshare.net/larrycai/learn-basic-ansible-using-docker    
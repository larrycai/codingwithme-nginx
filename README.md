## Introduction ##

this is local development environment for nginx 

Inside boot2docker, use shell script

    $ ./start.sh

You will need to access `nginx` container by

    $ docker exec -it nginx bash

Will be nice to open another shell to track logs

    $ docker logs -f nginx	
    
## Reference ##

* slides: http://www.slideshare.net/larrycai/learn-nginx-in90mins  
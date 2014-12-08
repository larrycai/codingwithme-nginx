## Introduction ##

this is local development environment for nginx 

### docker 1.3+
Inside boot2docker 1.3.x, use shell script

    $ ./start.sh

You will need to access `nginx` container by

    $ docker exec -it nginx bash
	
### docker <1.3	

Since `docker exec` is not supported before 1.3 version, we run into nginx container directly

    $ ./start-without-exec.sh
	root@bd2792b0cedc:/# nginx &

## Others
	
Will be nice to open another shell to track logs

    $ docker logs -f nginx	
    
## Reference ##

* slides: http://www.slideshare.net/larrycai/learn-nginx-in90mins  
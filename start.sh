echo "Prepare for the nginx env: larrycai/nginx-demo & httpd server"
echo "run 'stop.sh' if they already started before"
echo "You can use 'docker exec -it nginx bash' enter into bash (inside docker container)"
echo "Also always check logs by 'docker logs -f nginx'"
echo ""
#docker run -d --name haproxy -p :1080 -p :80 larrycai/ubuntu-sshd 
#docker run -d --name web1 larrycai/ubuntu-sshd 
#docker run -d --name web2 larrycai/ubuntu-sshd 
#docker run -d --name database larrycai/ubuntu-sshd 

docker run -d --name nginx -p 8080:80 -p 443:443 \
               --volume `pwd`:/nginx \
               larrycai/nginx-demo 
               

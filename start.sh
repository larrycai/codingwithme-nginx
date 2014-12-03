echo "Prepare for the nginx env: larrycai/nginx-demo & httpd server"
echo "run 'stop.sh' if they already started before"
echo "You can use 'docker exec -it nginx bash' enter into bash (inside docker container)"
echo "Also always check logs by 'docker logs -f nginx'"
echo ""
docker run -d --name cdn larrycai/nginx-demo 
docker run -d --name web1 httpd:2.4
docker run -d --name web2 httpd:2.4
docker run -d --name nginx -p 8080:80 -p 443:443 \
               --link cdn:cdn \
			   --link web1:web1 \
			   --link web2:web2 \
               --volume `pwd`:/nginx \
               larrycai/nginx-demo 
               

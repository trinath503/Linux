#docker basic 
docker ps -a
docker images

#basic commands
docker run -it image_id bash
docker exec -it container_id bash

#to run already exsiting one
nvidia-docker run -it --rm -v  /tri/:/tri trinath:docker-image
nvidia-docker exec -it ed2ee9d9a4bc bash
docker kill my_container
#Adding volumes 
docker run -it --rm -v /home/trinath/trinu/:/data/ ubuntu
docker run -p 0.0.0.0:5000:5000 -it --rm -v /home/trinath/trinu/:/data/ ubuntu

#Removing images & containers
docker rm $(docker ps -aq)
docker rmi $(docker images -q)
docker stop $(docker ps -aq)
#Copying from container to host
docker cp 05518f532325:/data/db/ db/

#removing unwanted docker images
sudo docker images | grep '<none>' | awk '{ print "docker rmi " $3}' > remove_unwanted_images.sh


#docker push image
dokcer tag image_id repo/imahe_name:tag
docker push repo/imahe_name:tag


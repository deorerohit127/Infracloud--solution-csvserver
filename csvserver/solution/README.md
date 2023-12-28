## Part 1
Run Container Image:
 Execute the following command to run the container image `infracloudio/csvserver:latest` in the background and check if it's running:

     docker run -d infracloudio/csvserver:latest

 image fails to run as expected, checked the logs using the command:

     docker logs <container_id>

Example:
     
      docker logs 4e784b57a309949c64de4daa39fd603c1db0e8aea4ea291ea8493d65f1b425c5

Found the error 
  
      2023/12/27 15:03:29 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory


Then to resolve the issue with the container, created the script(gencsv.sh) to generate CSV File:

Refer script

    csvserver/solution/gencsv.sh

 run the container in the background with the file generated in the previous step
 
    docker run -d -v "$(pwd)/inputFile:/csvserver/inputdata" infracloudio/csvserver:latest


Accessed the container shell to find the port on which the application is listening
  
    docker exec -it <container_id> /bin/bash
    
Check the port using the command

    netstat -tulpn
 
Noted the port (e.g., 9300) and exit the container. Stop and remove the running container
   
    docker stop <container_id>
    docker rm <container_id>

Executed the following command to run the container and ensure that the application is accessible on the host at http://localhost:9393. Set the environment variable CSVSERVER_BORDER to have the value Orange
      
    docker run -d --name csvserver -p 9393:9300 --env CSVSERVER_BORDER=Orange -v "$(pwd)/inputFile:/csvserver/inputdata" infracloudio/csvserver:latest



      
     



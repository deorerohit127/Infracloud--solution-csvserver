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



      
     



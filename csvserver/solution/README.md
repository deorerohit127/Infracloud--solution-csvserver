## Part 1

1. **Run Container Image:**
   - Execute the following command to run the container image `infracloudio/csvserver:latest` in the background and check if it's running:

     ```bash
     docker run -d infracloudio/csvserver:latest
     ```

     If the image fails to run as expected, check the logs using the command:

   ```bash
     docker logs <container_id>

Example:
   
    docker logs 4e784b57a309949c64de4daa39fd603c1db0e8aea4ea291ea8493d65f1b425c5

found the error 
  
    2023/12/27 15:03:29 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory


Now to resolve the issue with the container created the script to generate CSV File:

Create a bash script named gencsv.sh to generate a file named inputFile.


      
     



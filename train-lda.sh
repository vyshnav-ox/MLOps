#!/bin/bash
if sudo docker ps -l | grep my-docker-lda
then 
      echo "my-docker-lda already built"
else
      echo " my-docker-lda not built"
fi 
			   
if sudo grep "clf lda" train-lda.py
then 
      sudo docker run -p 5000:5000 my-docker-lda pyhton3 train-lda.py > result.txt
	  sudo cat result.txt
fi 
res=$(sudo cat result.txt)
test=80
if [ $test -gt $res ]	
then 
      echo "yes"
else  
      echo "no"
fi

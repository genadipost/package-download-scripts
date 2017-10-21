curl -s https://registry.access.redhat.com/v1/search?q=* | jq '.results[].name' | xargs -L 1 docker pull

curl -s https://registry.access.redhat.com/v1/search?q=* | jq '.results[].name' | xargs -L 1 -I {} "curl -s https://registry.access.redhat.com/v1/repositories/{}/tags"

curl -s https://registry.access.redhat.com/v1/search?q=* | jq '.results[].name' | xargs -L 1 -I {} sh -c  "curl -s https://registry.access.redhat.com/v1/repositories/{}/tags | jq ."

#!/bin/bash

number_of_versions=20


images_by_name=`curl -s https://registry.access.redhat.com/v1/search?q=* | jq '.results[].name'`
for image_name in $images_by_name ; do
  image_name=`echo "$image_name" | tr -d '"'`
  echo $image_name
  images_string=""
  tags=`curl -s https://registry.access.redhat.com/v1/repositories/$image_name/tags | jq -r 'keys[length-10:length-1]' | jq .[]`
  for tag in $tags ; do
     tag=`echo "$tag" | tr -d '"'`
     echo $image_name:$tag
     docker pull $image_name:$tag 
     images_string="$images_string $image_name:$tag"
  done
  echo $images_string
  tar_name=${image_name/\//__}
  echo "docker save -i $tar_name.tar $images_string"
  docker save -o /mnt/docker_images/$tar_name.tar $images_string
  docker rmi $images_string
done

rhscl/nginx-110-rhel7

curl -s https://registry.access.redhat.com/v1/search?q=* | jq '.results[].name' | xargs -L 1 -I {} sh -c "echo {} | tr -d '\"'" | xargs -L 1 -I {} sh -c "basename {}" | xargs -L 1 -I {} sh -c "echo {};find /mnt/docker_images/ -name *{}*;echo ------"

curl -s https://registry.access.redhat.com/v1/search?q=* | jq '.results[].name' | xargs -L 1 -I {} sh -c "basename {}" | xargs -L 1 -I {} sh -c "echo {};find /mnt/docker_images/ -name *{}*;echo ------"


images_by_name=`curl -s https://registry.access.redhat.com/v1/search?q=* | jq '.results[].name'`
for image_name in $images_by_name ; do
  image_name=`echo "$image_name" | tr -d '"'`
  images_string=""
  tags=`curl -s https://registry.access.redhat.com/v1/repositories/$image_name/tags | jq -r 'keys[length-2:length-1]' | jq .[]`
  tar_name=${image_name/\//__}
  if [ ! -f /mnt/docker_images/$tar_name.tar ]
    then
     echo $image_name does not exist - download
     for tag in $tags ; do
        tag=`echo "$tag" | tr -d '"'`
        echo $image_name:$tag
        docker pull $image_name:$tag 
        images_string="$images_string $image_name:$tag"
   
     done
  
     echo $images_string
     echo "docker save -i $tar_name.tar $images_string"
     docker save -o /mnt/docker_images/$tar_name.tar $images_string
     docker rmi $images_string
  else
    echo $image_name exists
  fi
  echo ------
done

images_by_name=`curl -s https://registry.access.redhat.com/v1/search?q=* | jq '.results[].name'`
for image_name in $images_by_name ; do
  image_name=`echo "$image_name" | tr -d '"'`
  images_string=""
  tags=`curl -s https://registry.access.redhat.com/v1/repositories/$image_name/tags | jq -r 'keys[length-2:length-1]' | jq .[]`
  tar_name=${image_name/\//__}
  if [ ! -f /mnt/docker_images/$tar_name.tar ]
    then
     echo $image_name does not exist - download
     for tag in $tags ; do
        #tag=`echo "$tag" | tr -d '"'`
        #echo $image_name:$tag
        #docker pull $image_name:$tag 
        #images_string="$images_string $image_name:$tag"
   
     done
  
     echo $images_string
     echo "docker save -i $tar_name.tar $images_string"
     #docker save -o /mnt/docker_images/$tar_name.tar $images_string
     #docker rmi $images_string
  else
    echo $image_name exists
  fi
  echo ------
done

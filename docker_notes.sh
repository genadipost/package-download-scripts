# Dowload images from registry.access.redhat.com
```bash
DOWNLOAD_PATH=/mnt/docker_images/
images_by_name=`curl -s https://registry.access.redhat.com/v1/search?q=* | jq '.results[].name'`
for image_name in $images_by_name ; do
  image_name=`echo "$image_name" | tr -d '"'`
  images_string=""
  tags=`curl -s https://registry.access.redhat.com/v1/repositories/$image_name/tags | jq -r 'keys[length-8:-1]' | jq .[]`
  tar_name=${image_name/\//__}
  if [ ! -f $DOWNLOAD_PATH$tar_name.tar ]
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
     docker save -o $DOWNLOAD_PATH$tar_name.tar $images_string
     docker rmi $images_string
  else
    echo $image_name exists
  fi
  echo ------
done
```

# Download images from docker hub by organization
```bash
#!/bin/bash

# https://gist.github.com/kizbitz/e59f95f7557b4bbb8bf2
# https://gist.github.com/kizbitz/175be06d0fbbb39bc9bfa6c0cb0d4721
# Requires 'jq': https://stedolan.github.io/jq/

# set username, password, organization, download path
RGISTRY_URL=hub.docker.com
UNAME="user"
UPASS="password"
ORG="fabric8"
DOWNLOAD_PATH=/mnt/docker_images/fabric8/

# -------

set -e
echo

# get token
echo "Retrieving token ..."
TOKEN=$(curl -s -H "Content-Type: application/json" -X POST -d '{"username": "'${UNAME}'", "password": "'${UPASS}'"}' https://${RGISTRY_URL}/v2/users/login/ | jq -r .token)

# get list of repositories
echo "Retrieving repository list ..."
REPO_LIST=$(curl -s -H "Authorization: JWT ${TOKEN}" https://${RGISTRY_URL}/v2/repositories/${ORG}/?page_size=100 | jq -r '.results|.[]|.name')

# output images & tags
echo
echo "Images and tags for organization: ${ORG}"
echo
for i in ${REPO_LIST}
do
  echo "${i}"	
  image_name=`echo "$i" | tr -d '"'`
  images_string=""
  tar_name=${ORG}__${image_name}
  if [ ! -f $DOWNLOAD_PATH$tar_name.tar ]
   then
    echo $image_name does not exist - download
    # tags
    IMAGE_TAGS=$(curl -s -H "Authorization: JWT ${TOKEN}" https://${RGISTRY_URL}/v2/repositories/${ORG}/${i}/tags/?page_size=100 | jq -r '.results|.[0,2]|.name')
    for j in ${IMAGE_TAGS}
    do
      if [ $j != "null" ]
      then
         docker pull $ORG/$i:$j
         images_string="$images_string $ORG/$i:$j"
      fi
    done
    echo
    echo $images_string
    echo "docker save -o $DOWNLOAD_PATH$tar_name.tar $images_string"
    docker save -o $DOWNLOAD_PATH$tar_name.tar $images_string
    docker rmi $images_string
  else
    echo $image_name exists
  fi
done
```

#!/bin/bash

container_name="your_container_name"

if docker ps --filter "name=${container_name}" | grep -q "${container_name}"; then
    echo "Container ${container_name} is running."
    # Add actions to be performed if the container is running
else
    echo "Container ${container_name} is not running."
    # Add actions to be performed if the container is not running
fi

if  docker ps --filter "name=mongo-db" | grep -q "mongo-db" && docker ps --filter "name=mongo-express" | grep -q "mongo-express" ; 
then
    echo "Containers are exisiting and running."
    # Add actions to be performed if the container is running
else
    echo "Containes are not running."
    # Add actions to be performed if the container is not running
    docker compose up 
fi


container_name="my_container"

container_status=$(docker inspect --format='{{.State.Status}}' "mogoDB")

if [[ "$(docker inspect --format='{{.State.Status}}' "mongoDB")" == "running" ]]; then
    echo "Container mongoDB is running."
    # Add actions to be performed if the container is running
else
    echo "Container mongoDB is not running (status: ${container_status})."
    # Add actions to be performed if the container is not running
fi


container_name="my_container"

container_status=$(docker inspect --format='{{.State.Status}}' "${container_name}")

if [[ "${container_status}" == "running" ]]; then
    echo "Container ${container_name} is running."
    # Add actions to be performed if the container is running
else
    echo "Container ${container_name} is not running (status: ${container_status})."
    # Add actions to be performed if the container is not running
fi
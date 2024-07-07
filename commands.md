#mongo db container
docker run -d \
--network mongo-network-new \
--name mongo-db-yat \     
-e MONGO_INITDB_ROOT_USERNAME=admin \
-e MONGO_INITDB_ROOT_PASSWORD=admin \
mongo:5.0.27

#mongo exxpress container
docker run -d \
--network mongo-network-new \
--name mongo-express-yat \
-p 8085:8081 \
-e ME_CONFIG_MONGODB_SERVER="mongo-db-yat" \
-e ME_CONFIG_MONGODB_ADMINUSERNAME="admin" \
-e ME_CONFIG_MONGODB_ADMINPASSWORD="admin" \
mongo-express:1.0.2-18-alpine3.19
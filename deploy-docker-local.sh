#Gera a imagem no docker
sudo docker build -t promohub/evolution-api .

#Run local container
sudo docker run -p 8080:8080 --name evolution-api --net='evolution-net' -e CACHE_REDIS_URI='redis://redis:6379/6' -e DATABASE_PROVIDER='postgresql' -e DATABASE_CONNECTION_URI='postgresql://postgres:root@postgres:5432/evolution?schema=public' promohub/evolution-api

docker build -t redis:16.0.2 .
docker tag redis:16.0.2 devopsjuly22017/redis:16.0.5
docker push devopsjuly22017/redis:16.0.5
docker rmi redis:16.0.2

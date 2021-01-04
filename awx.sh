echo "changes"
echo "FROM ansible/awx:16.0.0" > Dockerfile

echo "COPY credentials.py /etc/tower/conf.d/credentials.py" >> Dockerfile
echo "COPY SECRET_KEY /etc/tower/SECRET_KEY" >> Dockerfile
echo "COPY environment.sh /etc/tower/conf.d/environment.sh" >> Dockerfile
echo "COPY nginx.conf /etc/nginx/nginx.conf" >> Dockerfile
echo "USER root" >> Dockerfile
echo "RUN ln -s /tmp /var/run/redis" >> Dockerfile
docker build -t awxv1:16.0.0 .
docker tag awxv1:16.0.0 devopsjuly22017/awxv1:16.0.0
docker push devopsjuly22017/awxv1:16.0.0
docker rmi awxv1:16.0.0

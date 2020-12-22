echo "changes"
echo "FROM ansible/awx:16.0.0" > Dockerfile
echo "VOLUME /etc/tower/" >> Dockerfile
echo "VOLUME /etc/nginx/" >> Dockerfile
echo "VOLUME /usr/local/etc/redis/" >> Dockerfile

echo "COPY --chown=1000 credentials.py /etc/tower/conf.d/credentials.py" >> Dockerfile
echo "COPY --chown=1000 SECRET_KEY /etc/tower/SECRET_KEY" >> Dockerfile
echo "COPY --chown=1000 environment.sh /etc/tower/conf.d/environment.sh" >> Dockerfile
echo "COPY --chown=1000 nginx.conf /etc/nginx/nginx.conf" >> Dockerfile
echo "COPY --chown=1000 redis.conf /usr/local/etc/redis/redis.conf" >> Dockerfile
echo 'CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"' >> Dockerfile
docker rmi sidecar:16.0.0
docker build -t sidecar:16.0.0 .

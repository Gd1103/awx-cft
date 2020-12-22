FROM ansible/awx:16.0.0
VOLUME /etc/tower/
VOLUME /etc/nginx/
VOLUME /usr/local/etc/redis/
COPY --chown=1000 credentials.py /etc/tower/conf.d/credentials.py
COPY --chown=1000 SECRET_KEY /etc/tower/SECRET_KEY
COPY --chown=1000 environment.sh /etc/tower/conf.d/environment.sh
COPY --chown=1000 nginx.conf /etc/nginx/nginx.conf
COPY --chown=1000 redis.conf /usr/local/etc/redis/redis.conf
CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"

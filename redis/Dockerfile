FROM redis

RUN mkdir /var/run/redis
RUN chown redis:redis /var/run/redis
USER redis:redis
COPY --chown=redis:redis redis.conf /usr/local/etc/redis/redis.conf

FROM ansible/awx:16.0.0
COPY credentials.py /etc/tower/conf.d/credentials.py
COPY SECRET_KEY /etc/tower/SECRET_KEY
COPY environment.sh /etc/tower/conf.d/environment.sh
COPY nginx.conf /etc/nginx/nginx.conf

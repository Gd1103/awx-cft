DATABASES = {
    'default': {
        'ATOMIC_REQUESTS': True,
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': "awx",
        'USER': "awx",
        'PASSWORD': "awxpass",
        'HOST': "postgres",
        'PORT': "5432",
    }
}

BROADCAST_WEBSOCKET_SECRET = "bDcweml2Wmp6eHpGbTdONVVlSURJYXZvWVkxV1FnMmF2cEJiQlg2OUxwZ0N4R0hKakI3OjZDUkhNVGNjUUZzQXBNVlJEaHk1NHl2MS5GdGM1empZSjlueWhFZU9JcjVhZUtUR2x6cEdTQWdPam81MFlHQUI4MVlqMzRhT2lsR0o="

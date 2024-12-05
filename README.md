### Сборка образа

```
sudo docker build -t fastapi_mifi .
```

### Запуск контейнера

```
sudo docker run -d --name fastapi_mifi -p 80:80 fastapi_mifi
```

Контейнер будет доступен по адресу: http://127.0.0.1/
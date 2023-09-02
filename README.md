
# Установка docker контейнера для node-web-app
- Читать [`документацию`](https://nodejs.org/ru/docs/guides/nodejs-docker-webapp).
- Скачать уже готовый docker [`tar`](https://wdevioxa.org/files/node-web-app.tar) или [`tar.zip`](https://wdevioxa.org/files/node-web-app.tar.zip) образ.

## Введение
Docker - это открытая платформа для разработки, доставки и запуска приложений. Docker позволяет вам отделять ваши приложения от инфраструктуры, чтобы вы могли быстро доставлять программное обеспечение

### Шаг 1 - Загрузка образа.
Загрузим образ системы. Загрузка образа или репозитория из tar-архива (даже если он сжат с помощью gzip, bzip2 или xz) из файла или STDIN производится командой

```bash
$ docker load [OPTIONS]
```
Загрузим образ нашей системы из STDIN с помощью команды

```bash
$ docker load < node-web-app.tar
```
### Шаг 2 - Запуск загруженного образа.
Запустим загруженный образ. Запуск загруженного образа производится с помошью команды

```bash
$ docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
```
Запустим образ системы с указанными параметрами

```bash
$ docker run -dit --name node -p 8888:8080 vvzababurin/node-web-app:latest
```
Параметры используемые в командной строке

```bash
--name                  Назначить имя контейнеру
--detach , -d           Запустить контейнер фоном и напечатать его ID
--interactive , -i      Оставить STDIN открытым даже если он не применяется
--publish , -p          Публиковать порты контейнера на хосте
--tty , -t              Выделить псевдо-TTY
```

### Шаг 3 - Проверка запущенного образа.
Проверим запущенный образ. Проверка запущенного образа производится с помошью команды

```bash
$  docker ps [OPTIONS]
```
Проверим список всех запущенных контейнеров с помощью команды

```bash
$  docker ps -a
```
### Шаг 4 - Остановка контейнера
```bash
$ docker stop [OPTIONS] IMAGE [COMMAND] [ARG...]
```
#### Описание:
Основной процесс внутри контейнера получит SIGTERM, а по истечении периода ожидания — SIGKILL.

#### Пример:
```bash
$ docker stop node
```

### Шаг 5 - Удаление контейнера
```bash
$ docker rm [OPTIONS] IMAGE [COMMAND] [ARG...]
```

#### Описание:
Удаляет один или несколько контейнеров

#### Пример:
```bash
$ docker rm node
```

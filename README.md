# README

Список необходимых шагов для полной роботоспособности приложения

1. Скачать .zip либо склонировать файлы из этого репозитория

2. Выполнить в консоли комманды:

`bundle`


`rails db:create db:migrate db:seed`


3. Запустить сервер используя следующую комманду:

`bin/dex`

4. Доступные для обращения эндпоинты:

**GET запрос:** [http://localhost:3000/get_rooms_data](http://localhost:3000/get_rooms_data) - получение списка чатов(комнат)

**POST запрос:** [http://localhost:3000/create_message_use_api/37/vfwe](http://localhost:3000/create_message_use_api/37/vfwe) - пример запроса, при наличии 37 id-дишника в таблице Room и текста запрос будет осуществлен.

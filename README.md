# Рецепты работы с YC

В данном репозитории я буду складывать различные рецепты работы с яндекс облаком


## Системные требования
Делать рецепты буду исходя из следующего инструментация


* Зарегистрируйтесь в [Яндекс.Облаке](https://cloud.yandex.ru)
* Установите и иницируйте [yc cli](https://cloud.yandex.ru/docs/cli/quickstart)
* Установите и иницируйте [terraform](https://www.terraform.io/downloads.html)
* (Для пользователей windows) установите [git-bash](https://gitforwindows.org)
* Сгенерируйте [ssh ключ](https://git-scm.com/book/ru/v1/Git-на-сервере-Создание-открытого-SSH-ключа) для доступа к инстансам
* Скачайте этот репозиторий  `git clone https://github.com/nar3k/yc-recipes.git`
* Перейдите в фолдер с этим репозиторием `cd yc-recipes`

## Рецепты

### Балансировщик

* [Переносим статический адрес с ВМ на балансировщик](load-balancer/move-static-ip-to-lb)

![Диаграмма без названия drawio](https://github.com/user-attachments/assets/57119d29-8bca-4c6c-836d-a7d2acfb4349)

Тема проeкта: "Подготовка web стенда с балансировкой нагрузки, системой мониторинга и централизованным сбором логов"

Проект реализован на 3-х виртуальных машинах под управлением Linux ubuntu 22.04.
Виртуальные машины развернуты по средствам гипервизора VMware ESXi.
Назначение виртуальных машин:
1. Front(10.1.10.249) фронтенд сервер(nginx), система мониторинга (Prometheus + Grafana), сбор логов (ELK).
2. Back1(10.1.10.250) бэкенд сервер(apache), сбор метрик для мониторинга (Prometheus), работа с базами данных и реплекация баз данных (mysql master)
3. Back2(10.1.10.250) бэкенд сервер(apache), сбор метрик для мониторинга (Prometheus), работа с базами данных и реплекация баз данных (mysql replica)

Порядок восстановления стенда после аварии:
1. Произвести настройку сетевых интерфейсов на ВМ. Пример на Git (Project/netplan.yml)
2. Произвести подключение ВМ к Git при помощи ключей ssh или http. Пример на Git (Project/script/git.sh)
3. Подготовить фронтэнд сервер:
   1. Произвести обновление и установку компанентов (nginx, Prometheus, Grafana, ELK). Скрипт на Git (Project/script/front.sh и Project/script/ELK.sh)
   2. Произвести настройку компонентов. Скрипт на Git (Project/script/front_conf.sh). Файлы конфигураций на Git (Project/Front/ и Project/ELK/)
   3. Настроить графические оболочки для Grafana(порт 3000) и ELK(порт 5601)
4. Подготовить бэкенд сервер 1 и 2.
   1. Произвести обновление и установку компанентов (apache, Prometheus, mysql). Скрипт на Git (Project/script/back.sh)
   2. Произвести настройку компонентов. Скрипт на Git (Project/script/back1_conf.sh и Project/script/back2_conf.sh). Файлы конфигураций на Git (Project/Back/, Project/mysql/ и Project/site)
5. Проверить работу репликации баз данных. При необходимости создать бэкап базы данных. Скрипт на Git (Project/script/mysql_backup.sh)
6. Проверить работу web и балансировки нагрузки.
7. Проверить работу системы мониторинга и логирования.

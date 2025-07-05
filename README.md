# DevOps Pet Project 🚀

## Описание
Pet‑проект, демонстрирующий полный DevOps‑цикл:
* Flask‑приложение в Docker
* CI/CD через GitLab Runner
* Развёртывание на AWS EC2
* Мониторинг с Prometheus + Grafana

## Быстрый старт локально
```bash
bash deploy.sh
```

## CI/CD
При push в main ветку:
1. Runner собирает Docker‑образ
2. Передаёт его на EC2
3. Перезапускает контейнер

## Мониторинг
Базовый конфиг Prometheus находится в каталоге `prometheus/`.

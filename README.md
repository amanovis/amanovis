# 🚀 PET-проект: Локальная и облачная инфраструктура с контейнеризацией

**Роль:** DevOps Engineer

---

## 📚 Описание

Проект направлен на создание и поддержку DevOps-инфраструктуры для приложений с использованием контейнеризации, CI/CD и мониторинга как в локальной среде, так и в облаке (AWS).

---

## 🔧 Технологии и инструменты

| Категория         | Технологии                 |
|------------------|----------------------------|
| Облако           | AWS (EC2, S3, IAM)         |
| CI/CD            | GitLab, GitLab Runner      |
| Контейнеризация  | Docker                     |
| Мониторинг       | Prometheus, Grafana        |
| Инфраструктура   | Linux, Shell, Dockerfile   |

---

## 📦 Архитектура

```text
[ GitLab Repo ] 
      |
      v
[ GitLab CI/CD ] ---> [ Docker Build ] ---> [ Push to Registry ]
      |
      v
[ AWS EC2 ] <--- [ Docker Pull ] <--- [ Auto Deploy ]
      |
      v
[ Prometheus + Grafana Monitoring ]

# ecommerce-data-platform

Pipeline de données e-commerce avec BigQuery, Airflow, dbt et Docker.

## Structure du projet

```
ecommerce-data-platform/
├── docker/          # Docker Compose, Dockerfiles (Airflow & dbt)
├── dbt/             # Projet dbt (models, tests, seeds)
├── scripts/         # Scripts utilitaires (génération de données, chargement)
├── infra/           # Setup BigQuery et diagramme d'architecture
└── .gitignore
```

## TODO

- [ ] Configurer Docker Compose
- [ ] Implémenter le DAG Airflow
- [ ] Écrire les modèles dbt (staging, intermediate, marts)
- [ ] Générer les données fictives
- [ ] Configurer BigQuery

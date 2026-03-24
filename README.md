# togglemaster-infra

Repositório de infraestrutura como código (IaC) do projeto ToggleMaster para a Fase 3 do Tech Challenge.

## Objetivo

Este repositório centraliza a infraestrutura em Terraform necessária para executar a plataforma ToggleMaster em ambiente cloud, substituindo a criação manual de recursos e permitindo reprodutibilidade, versionamento e automação.

A proposta é atender os requisitos de IaC, DevSecOps e GitOps da Fase 3, servindo como base para o provisionamento dos recursos AWS usados pelos microsserviços:

- auth-service
- flag-service
- targeting-service
- evaluation-service
- analytics-service

## Escopo da infraestrutura

A infraestrutura prevista neste repositório inclui:

- VPC
- Subnets públicas e privadas
- Internet Gateway e tabelas de rota
- Cluster Amazon EKS
- Node Groups
- Repositórios Amazon ECR
- Bancos Amazon RDS PostgreSQL
- Amazon ElastiCache Redis
- Amazon DynamoDB
- Amazon SQS
- Backend remoto do Terraform em S3

## Estrutura do repositório

```text
togglemaster-infra/
  environments/
    dev/
  modules/
    vpc/
    eks/
    ecr/
    rds/
    elasticache/
    dynamodb/
    sqs/
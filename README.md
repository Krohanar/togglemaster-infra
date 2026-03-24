# ToggleMaster - Infraestrutura (Tech Challenge Fase 3)

Este repositório contém a infraestrutura como código do projeto **ToggleMaster**, desenvolvida para a **Fase 3 do Tech Challenge da Pós-Tech**.

O objetivo desta etapa foi substituir a configuração manual do ambiente por uma abordagem baseada em **Terraform**, além de integrar a infraestrutura com uma arquitetura de **GitOps**, **CI/CD** e **DevSecOps**.

---

## Visão geral da solução

A solução final foi organizada em três frentes principais:

- **Infraestrutura como Código (Terraform)**: responsável por provisionar os recursos na AWS
- **Repositório de código dos microsserviços**: responsável pelo build, testes, análise de segurança e publicação das imagens
- **Repositório GitOps**: responsável pelos manifests Kubernetes consumidos pelo ArgoCD

Os cinco microsserviços do projeto são:

- `auth-service`
- `flag-service`
- `targeting-service`
- `evaluation-service`
- `analytics-service`

---

## Objetivos da Fase 3

Os principais objetivos desta fase foram:

- provisionar a infraestrutura na AWS por código
- eliminar dependência de criação manual no console
- adotar gerenciamento seguro de segredos
- implementar pipelines de **CI/CD**
- adicionar práticas de **DevSecOps**
- adotar **GitOps** com **ArgoCD**
- automatizar o deploy no cluster Kubernetes

---

## Arquitetura provisionada

A infraestrutura foi criada na AWS com Terraform e inclui os seguintes componentes:

- **VPC**
- **Subnets públicas e privadas**
- **Internet Gateway**
- **NAT Gateway**
- **EKS**
- **ECR**
- **RDS PostgreSQL**
- **ElastiCache Redis**
- **SQS**
- **DynamoDB**
- **AWS Secrets Manager**
- **Bucket S3 para backend remoto do Terraform**

---

## Estrutura do repositório

```text
togglemaster-infra/
  environments/
    dev/
  modules/
    vpc/
    ecr/
    eks/
    rds/
    sqs/
    dynamodb/
    elasticache/
    secrets/

## Descrição da estrutura

- `environments/dev/`: configuração do ambiente de desenvolvimento
- `modules/vpc/`: rede, subnets, IGW, NAT e rotas
- `modules/ecr/`: repositórios ECR dos microsserviços
- `modules/eks/`: cluster EKS e node group
- `modules/rds/`: banco PostgreSQL
- `modules/sqs/`: fila principal e dead-letter queue
- `modules/dynamodb/`: tabela utilizada pelo analytics-service
- `modules/elasticache/`: Redis para caching
- `modules/secrets/`: segredos gerenciados no AWS Secrets Manager


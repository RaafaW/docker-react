#!/bin/bash

echo "Iniciando o ambiente com Node.js e React..."

# Perguntar sobre Next.js
read -p "Deseja instalar Next.js? (y/n): " install_next
if [ "$install_next" == "y" ]; then
  npm install next
  echo "Next.js instalado com sucesso!"
fi

# Perguntar sobre GraphQL
read -p "Deseja instalar GraphQL? (y/n): " install_graphql
if [ "$install_graphql" == "y" ]; then
  npm install graphql express-graphql
  echo "GraphQL instalado com sucesso!"
fi

# Perguntar sobre MongoDB
read -p "Deseja instalar MongoDB? (y/n): " install_mongodb
if [ "$install_mongodb" == "y" ]; then
  apt-get update
  apt-get install -y mongodb
  echo "MongoDB instalado com sucesso!"
fi

# Perguntar sobre PostgreSQL
read -p "Deseja instalar PostgreSQL? (y/n): " install_postgresql
if [ "$install_postgresql" == "y" ]; then
  apt-get update
  apt-get install -y postgresql postgresql-contrib
  echo "PostgreSQL instalado com sucesso!"
fi

echo "Ambiente configurado. Pronto para desenvolvimento!"

# Manter o container rodando com um shell interativo
/bin/bash

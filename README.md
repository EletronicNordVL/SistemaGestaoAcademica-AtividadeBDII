# Sistema de Gestão Acadêmica - Consultas em SQL

Este repositório contém a modelagem, criação e consultas relacionais para um sistema de **Gestão Acadêmica** desenvolvido em **MySQL**. O projeto abrange desde a definição da estrutura do banco de dados (DDL) e inserção de dados de teste (DML) até a resolução de consultas analíticas avançadas (DQL).

---

## 📁 Estrutura do Repositório

```text
.
├── 01 - SCRIPT SQL/
│   ├── script_faculdade.sql
│   └── README.md
└── README.md
```

* **`01 - SCRIPT SQL/`**: Contém o script SQL completo com os comandos de criação do banco de dados `faculdade`, povoamento das tabelas e a resolução das consultas solicitadas.

---

## 🗄️ Estrutura do Banco de Dados

O banco de dados relacional é composto por três tabelas principais:
* **`Aluno`**: Registra as informações dos discentes (`Matricula`, `Nome`, `Idade`).
* **`Disciplina`**: Registra o catálogo de disciplinas/cursos (`CodigoDisciplina`, `Nome`).
* **`Curso`**: Tabela associativa que mapeia o relacionamento N:N entre alunos e disciplinas, armazenando também as notas (`Nota1`, `Nota2`).

---

## 💻 Tecnologias e Conceitos Utilizados
* **SGBD**: MySQL
* **DDL**: `CREATE DATABASE`, `CREATE TABLE`, definições de `PRIMARY KEY` e `FOREIGN KEY`.
* **DML**: `INSERT INTO` para carga inicial de dados.
* **DQL**:
  * Ordenação (`ORDER BY`)
  * Junções relacionais (`INNER JOIN`, `LEFT JOIN`)
  * Funções de agregação (`AVG`, `COUNT`)
  * Agrupamento e filtros sobre agregados (`GROUP BY`, `HAVING`)

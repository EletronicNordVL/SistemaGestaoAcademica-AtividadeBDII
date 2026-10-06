# 01 - Script SQL (Banco de Dados Acadêmico)

Esta pasta contém o script SQL completo para criação, povoamento e execução das consultas analíticas no banco de dados `faculdade`.

---

## 🛠️ Ferramentas e Ambiente
* **SGBD**: MySQL
* **Ferramenta recomendada**: MySQL Workbench, DBeaver ou MySQL CLI

---

## 📄 Conteúdo do Script
O arquivo `.sql` está dividido em três etapas essenciais:

1. **Definição de Estrutura (DDL)**:
   * Criação da base de dados `faculdade`.
   * Criação das tabelas `Aluno`, `Disciplina` e `Curso` (com chaves primárias e estrangeiras).

2. **Carga de Dados (DML)**:
   * Inserção de dados de alunos, disciplinas e notas para simulação do ambiente acadêmico.

3. **Consultas Analíticas (DQL - Questões de A a E)**:
   * **Item A**: Listagem de alunos ordenados por idade (crescente).
   * **Item B**: Seleção de alunos matriculados na disciplina de Engenharia via `JOIN`.
   * **Item C**: Cálculo de média de notas (`(Nota1 + Nota2)/2`) com filtro para médias $\ge 7.0$ via `HAVING`.
   * **Item D**: Listagem do nome dos alunos e suas respectivas disciplinas utilizando `LEFT JOIN` para incluir alunos sem matrícula (`NULL`).
   * **Item E**: Contagem de alunos por disciplina, exibindo apenas cursos com 2 ou mais matriculados (`GROUP BY` + `HAVING`).

---

## 🚀 Como Executar

1. Abra o **MySQL Workbench** (ou o cliente MySQL de sua preferência).
2. Conecte-se ao seu servidor de banco de dados.
3. Abra o arquivo de script SQL contido nesta pasta.
4. Execute o script completo (`Ctrl + Shift + Enter` no MySQL Workbench).

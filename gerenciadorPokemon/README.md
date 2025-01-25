# GerenciadorPokemon

O GerenciadorPokemon é um projeto focado na extração, organização e manipulação de dados em formato JSON, integrando-os a um banco de dados PostgreSQL. Ele permite estruturar, armazenar e tratar informações de forma eficiente, facilitando o uso em aplicações diversas. O projeto está dividido em três partes principais: extração, manipulação e geração de scripts SQL.

---

## Estrutura do Projeto

### 1. **Extrator de Dados** (`extrator.py`)
Responsável por extrair informações detalhadas sobre os Pokémon diretamente da PokeAPI e salvá-las em um arquivo JSON.

- **Funcionalidades principais:**
  - Requisição de dados sobre Pokémon, como tipos, habilidades, altura, peso, habitat e evoluções.
  - Geração de um arquivo JSON contendo os detalhes dos Pokémon especificados.

### 2. **Manipulação e Inserção no Banco de Dados** (`database.py`)
Insere os dados extraídos no banco de dados PostgreSQL, organizando as informações em tabelas relacionadas e verificando duplicatas.

- **Funcionalidades principais:**
  - Conexão com o banco de dados PostgreSQL via `psycopg2` e variáveis de ambiente.
  - Inserção de informações únicas (habitats, tipos, habilidades) e dados gerais dos Pokémon.
  - Criação de relações entre Pokémon e suas evoluções, tipos e habilidades.

### 3. **Gerador de Scripts SQL** (`gerador_script.py`)
Gera um script SQL contendo os comandos necessários para popular o banco de dados com os dados extraídos.

- **Funcionalidades principais:**
  - Criação de comandos SQL com subconsultas para garantir integridade referencial.
  - Geração de comandos para inserir habitats, tipos, habilidades e evoluções.
  - Salva o script SQL no arquivo `inserts.sql`.

---

## Configuração e Execução

### **Pré-requisitos**
- Python 3.8+
- PostgreSQL
- Dependências Python:
  - `requests`
  - `psycopg2`
  - `python-dotenv`

### **Instalação**
1. Clone o repositório:

2. Instale as dependências:
   ```bash
   pip install -r requirements.txt
   ```

3. Configure o arquivo `.env` com as credenciais do banco de dados:
   ```env
   DB_HOST_teste=localhost
   DB_USER_teste=seu_usuario
   DB_PASSWORD_teste=sua_senha
   DB_NAME_teste=seu_banco
   ```

4. Certifique-se de que o banco de dados PostgreSQL está configurado e rodando, com as tabelas esperadas:
   - `pokemons`
   - `habitats`
   - `types_`
   - `abilities`
   - `pokemon_types`
   - `pokemon_abilities`
   - `evolutions`

### **Execução**
1. Extraia os dados da PokeAPI:
   ```bash
   python extrator.py
   ```
   Isso gerará um arquivo JSON com os dados extraídos (`lista_pokemon_completa_1050.json`).

2. Insira os dados no banco de dados:
   ```bash
   python database.py
   ```

3. (Opcional) Gere um script SQL para inserir os dados:
   ```bash
   python gerador_script.py
   ```
   O script será salvo como `inserts.sql`.

---

## Estrutura de Arquivos

- **`extrator.py`**: Script para extrair dados da PokeAPI.
- **`database.py`**: Script para inserir dados diretamente no banco PostgreSQL.
- **`gerador_script.py`**: Script para gerar comandos SQL baseados nos dados extraídos.
- **`lista_pokemon_completa_1050.json`**: Arquivo JSON com os dados dos Pokémon (gerado pelo `extrator.py`).
- **`inserts.sql`**: Arquivo SQL gerado com os comandos de inserção.
- **`.env`**: Arquivo de configuração com variáveis de ambiente (não incluído no repositório).

---

## Contribuição

1. Faça um fork do repositório.
2. Crie uma branch com suas alterações:
   ```bash
   git checkout -b minha-feature
   ```
3. Faça um commit das suas alterações:
   ```bash
   git commit -m 'Adicionei uma nova feature'
   ```
4. Envie para o repositório remoto:
   ```bash
   git push origin minha-feature
   ```
5. Abra um Pull Request.

---



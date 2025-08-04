#!/bin/bash

cat <<EOF > README.md
# 📝 Padrões de Commits - Back-end

Este repositório documenta os padrões de commits para projetos de back-end, baseado no [Conventional Commits](https://www.conventionalcommits.org/pt-br/).

Manter um padrão claro nas mensagens de commit facilita o entendimento do histórico do projeto, a colaboração entre desenvolvedores e a automação de processos como geração de changelogs e versionamento semântico.

## 🎩 Tipos de Commits Convencionais

Estes são os tipos básicos definidos pelo Conventional Commits, usados para categorizar as alterações no código:

| Tipo     | Descrição breve                                    |
|----------|---------------------------------------------------|
| feat     | Adiciona uma nova funcionalidade                   |
| fix      | Corrige um bug                                     |
| docs     | Atualizações na documentação                       |
| style    | Ajustes de formatação ou estilo, sem alterar lógica|
| refactor | Modificações no código que não alteram funcionalidades ou corrigem bugs |
| test     | Adição ou correção de testes                       |
| chore    | Tarefas gerais de manutenção que não alteram código nem testes |
| build    | Mudanças no processo de build ou dependências     |
| ci       | Configurações e scripts para integração contínua  |
| perf     | Melhorias de performance                           |
| revert   | Reversão de commits anteriores                     |

## 💡 Tipos Adicionais / Extensões Comuns

Esses tipos são extensões muito usadas em projetos de back-end para detalhar melhor as alterações específicas:

| Tipo      | Descrição breve                                     |
|-----------|----------------------------------------------------|
| infra     | Alterações na infraestrutura (Docker, servidores, rede) |
| db        | Mudanças no banco de dados (migrations, seeds)     |
| security  | Correções ou melhorias relacionadas à segurança    |
| config    | Alterações em arquivos de configuração              |
| log       | Ajustes e melhorias em logs e monitoramento         |
| deps      | Atualização de dependências                          |
| api       | Modificações na API (endpoints, contratos, regras)  |

## 📖 Tabela Completa de Tipos de Commits

| Tipo do Commit       | Emoji                            | Palavra-chave       |
|----------------------|----------------------------------|---------------------|
| Funcionalidade nova  | ✨ \`:sparkles:\`                | \`feat\`            |
| Correção de bug      | 🐛 \`:bug:\`                     | \`fix\`             |
| Documentação         | 📝 \`:memo:\`                    | \`docs\`            |
| Estilo de código     | 🎨 \`:art:\`                     | \`style\`           |
| Refatoração          | 🔨 \`:hammer:\`                  | \`refactor\`        |
| Adicionando um teste | ✅ \`:white_check_mark:\`        | \`test\`            |
| Tarefa auxiliar      | 🔧 \`:wrench:\`                  | \`chore\`           |
| Melhoria de performance | ⚡ \`:zap:\`                  | \`perf\`            |
| Integração contínua  | 🤖 \`:robot:\`                   | \`ci\`              |
| Processo de build    | 📦 \`:package:\`                 | \`build\`           |
| Reversão             | ⏪ \`:rewind:\`                  | \`revert\`          |
| Infraestrutura       | 🏗️ \`:building_construction:\`   | \`infra\`           |
| Banco de dados       | 🗃️ \`:card_file_box:\`           | \`db\`              |
| Segurança            | 🔐 \`:closed_lock_with_key:\`    | \`security\`        |
| Log e monitoramento  | 📈 \`:chart_with_upwards_trend:\`| \`log\`             |
| Dependências         | 📚 \`:books:\`                   | \`deps\`            |
| Configuração         | ⚙️ \`:gear:\`                    | \`config\`          |
| API                  | 🔌 \`:electric_plug:\`           | \`api\`             |

## 📑 Exemplos Práticos de Commits

| Tipo       | Exemplo de commit                                                       |
|------------|------------------------------------------------------------------------|
| Funcionalidade nova  | \`✨ feat(auth): adiciona middleware JWT para autenticação\`        |
| Correção de bug      | \`🐛 fix(api): corrige erro 500 ao atualizar usuário sem email\`   |
| Documentação         | \`📝 docs(readme): atualiza instruções para rodar o projeto\`       |
| Estilo de código     | \`🎨 style(api): ajusta indentação e remove linhas em branco\`     |
| Refatoração          | \`🔨 refactor(service/user): extrai lógica de verificação para helper\` |
| Adicionando um teste | \`✅ test(user): adiciona teste para verificar hash de senha\`     |
| Tarefa auxiliar      | \`🔧 chore: atualiza pacotes e scripts do package.json\`           |
| Melhoria de perf.    | \`⚡ perf(query): otimiza busca de usuários com index no email\`    |
| Integração contínua  | \`🤖 ci(github): adiciona verificação de testes no pull request\`  |
| Processo de build    | \`📦 build: adiciona dotenv ao build final para variáveis de ambiente\` |
| Reversão             | \`⏪ revert: reverte uso de bcrypt por conflito com ambiente\`     |
| Infraestrutura       | \`🏗️ infra(docker): adiciona volume persistente ao container do banco\` |
| Banco de dados       | \`🗃️ db(migration): cria tabela de favoritos com relação a usuários\` |
| Segurança            | \`🔐 security(cors): restringe origens permitidas para frontend\`  |
| Log e monitoramento  | \`📈 log(logger): adiciona logs com Winston para endpoints sensíveis\` |
| Dependências         | \`📚 deps: atualiza versão do pacote express para 4.18.2\`          |
| Configuração         | \`⚙️ config: ajusta variáveis de ambiente no arquivo .env\`        |
| API                  | \`🔌 api(user): adiciona endpoint para resetar senha\`             |

## 🧾 Exemplos Completos de Mensagens de Commit

### 🛠️ Método 1 – Commit detalhado via editor

Para escrever commits completos com título, corpo e \`BREAKING CHANGE\` (se necessário), use:

\`\`\`bash
git commit
\`\`\`

Esse comando abrirá o editor padrão do Git para que você possa escrever a mensagem no seguinte formato:

\`\`\`txt
<tipo>(escopo opcional): descrição curta

Corpo explicando o que foi feito, por que foi feito e detalhes relevantes.

BREAKING CHANGE: descreva aqui o que quebra compatibilidade anterior, se houver.
\`\`\`

Abaixo estão exemplos usando a estrutura completa recomendada pelo [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/#summary):

\`\`\`bash
✨ feat(auth): adiciona middleware JWT para autenticação

Implementa um middleware que valida tokens JWT em rotas protegidas.
Esse middleware será utilizado em todas as rotas privadas do sistema.
\`\`\`

\`\`\`bash
🐛 fix(api): corrige erro 500 ao atualizar usuário sem email

Corrige um bug onde o backend retornava erro 500 ao tentar atualizar
um usuário com campo de email nulo.

BREAKING CHANGE: Agora é obrigatório informar um email válido ao atualizar um usuário.
\`\`\`

\`\`\`bash
📝 docs(readme): atualiza instruções para rodar o projeto

Melhora as instruções no README adicionando passo a passo para rodar o projeto localmente com Docker.
\`\`\`

\`\`\`bash
🎨 style(api): ajusta indentação e remove linhas em branco

Melhorias de estilo no código da camada de controle de usuários.
Nenhuma funcionalidade foi alterada.
\`\`\`

\`\`\`bash
🔨 refactor(service/user): extrai lógica de verificação para helper

Move a verificação de duplicidade de email para uma função helper reutilizável.
\`\`\`

\`\`\`bash
✅ test(user): adiciona teste para verificar hash de senha

Adiciona testes unitários para garantir que senhas estão sendo
criptografadas corretamente antes de salvar no banco de dados.
\`\`\`

\`\`\`bash
🔧 chore: atualiza pacotes e scripts do package.json

Atualiza dependências e scripts de build para ambiente de produção.
\`\`\`

\`\`\`bash
⚡ perf(query): otimiza busca de usuários com index no email

Cria um índice no campo email para acelerar consultas frequentes no banco.
\`\`\`

\`\`\`bash
🤖 ci(github): adiciona verificação de testes no pull request

Inclui job de testes automatizados na pipeline do GitHub Actions.
\`\`\`

\`\`\`bash
📦 build: adiciona dotenv ao build final para variáveis de ambiente

Garante que as variáveis de ambiente do arquivo .env estejam presentes no processo de build.
\`\`\`

\`\`\`bash
⏪ revert: reverte uso de bcrypt por conflito com ambiente

Reverte commit anterior que trocava crypto por bcrypt.
\`\`\`

\`\`\`bash
🏗️ infra(docker): adiciona volume persistente ao container do banco

Permite que os dados do banco persistam entre reinicializações do container.
\`\`\`

\`\`\`bash
🗃️ db(migration): cria tabela de favoritos com relação a usuários

Cria uma nova tabela de favoritos com chave estrangeira para a tabela de usuários.
\`\`\`

\`\`\`bash
🔐 security(cors): restringe origens permitidas para frontend

Atualiza configuração CORS para aceitar apenas domínios confiáveis.
\`\`\`

\`\`\`bash
📈 log(logger): adiciona logs com Winston para endpoints sensíveis

Agora endpoints de autenticação e pagamento possuem logging detalhado.
\`\`\`

\`\`\`bash
📚 deps: atualiza versão do pacote express para 4.18.2

Inclui correções de segurança da nova versão.
\`\`\`

\`\`\`bash
⚙️ config: ajusta variáveis de ambiente no arquivo .env

Adiciona nova variável \`JWT_SECRET\` e remove \`SESSION_KEY\`.
\`\`\`

\`\`\`bash
🔌 api(user): adiciona endpoint para resetar senha

Permite que usuários solicitem um token para redefinir a senha via email.
\`\`\`

## 🛠 Contribuições

Contribuições são bem-vindas! Se você quiser sugerir melhorias, corrigir erros ou adicionar novas funcionalidades, siga os passos abaixo:

1. **Fork** este repositório.
2. **Clone** o seu fork localmente:
   \`\`\`bash
   git clone https://github.com/seu-usuario/seu-repositorio.git
   \`\`\`
3. **Crie uma branch** com um nome descritivo:
   \`\`\`bash
   git checkout -b minha-melhoria
   \`\`\`
4. **Faça suas alterações** seguindo os padrões de commits deste repositório.
5. **Commit e push** para o seu fork:
   \`\`\`bash
   git add .
   git commit -m "feat: descreva brevemente sua contribuição"
   git push origin minha-melhoria
   \`\`\`
6. **Abra um Pull Request** explicando o que foi alterado e por quê.

EOF
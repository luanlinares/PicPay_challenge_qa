![PicPay Logo](logo.jpg)
# PicPay Challenge QA #

Este projeto foi criado para executar testes automatizados de uma aplicação web de e-commerce.

## Ferramentas

Lista de frameworks utilizados:
- **Ruby**: para escrever o código;
- **Cucumber**: para criar as especificações em linguagem gherkin; 
- **Capybara**: para simular ações de um usuário na aplicação; 
- **SitePrism**: É uma DSL (Domain Specific Language) projetada para facilitar a criação de objetos de página para testes automatizados usando o Capybara;
- **Rubocop**: Gem que realiza uma análise do código Ruby para verificar/corrigir erros de sintaxe e formatação de acordo com as boas práticas.


Para a realização deste challenge foram utilizadas apenas ferramentas open-source.

## Estrutura do Projeto

```
Projeto
├── features
|   ├── pages
|   |   └── Page Object
│   ├── specs
│   │   └── cenarios em BDD
│   ├── step_definitions
│   │   └── arquivos de testes
│   └── support
│       ├── data
│       │    └─prod.yml
│       ├── env.rb
│       |── helper.rb
|       |── hooks.rb
|       └── page_helper.rb
├── results
│   ├── screenshots
│   └── HTML Report    
├── .gitignore
├── cucumber.yaml
├── debug.log
├── Gemfile
├── Gemfile.lock
└── README.md
```
Todos os resultados dos testes são salvos dentro da pasta *results* folder.   

## Requisitos

Antes de rodar os testes, é necessário possuir os seguintes ítens:

[ruby](https://www.ruby-lang.org/en/downloads/)  
[bundler](https://bundler.io/)  
[ChromeDriver](https://chromedriver.chromium.org/downloads)  
[GeckoDriver](https://github.com/mozilla/geckodriver/releases)

## Instalação 

Para instalar as dependências do projeto, execute o comando: 

```               
$ bundle install                                             
```  

## Configuração do Projeto

O arquivo cucumber.yml contém as configurações para execução do projeto.   
Por padrão:
- Os testes são executados no navegador Chrome;
- Os relatórios são gerados em formato html;
- O terminal exibe um resumo da execução dos testes.

Caso queira utilizar outra configuração para execução dos testes, consulte o arquivo cucumber.yml.


## Executando os testes

Para realizar os testes, execute o seguinte comando:

```
$ cucumber                                           
```
O comando *cucumber* executa todos os cenários de teste do projeto. 

Caso queira executar um cenário específico, utilize o comando:

```
$ cucumber -t @tag                           
```
**Nota:** *tag* é o nome dado para sua suíte ou cenário específico. Exemple: *@login*.

<h1>Arquitetura do projeto</h1>

Configurando sua máquina
-------------------------
Necessário instalar:
-----------------------

*	Ruby for MacOs: linguagem de programação utilizada nos testes.
*	Visual studio Code: Editor de texto com funções úteis para escrever o código da automação de testes.
*   Xcode: instalação dos atributos do iOS, inclusive o emulador.


Configurando o ambiente de automação de testes Web
------------------------------------------------------------

Para que sua automação possa ser realizada é necessário instalar alguns recursos, conforme será descrito abaixo:


<h3>1. Instalar o Ruby para MacOs de acordo com a versão do seu sistema operacional x64</h3>

<h3>2. Instalar o appium para MacOs de acordo com a versão do seu sistema operacional x64</h3>

<h3>3. Instalar o xcode para MacOs de acordo com a versão do seu sistema operacional</h3>


E pronto, ambiente configurado.

Clonando o repositório do git para execução dos teste
------------------------------------------------------

<h3>Selecionando o destino para o clone do projeto</h3>

*	Navegue no Cmder até a pasta em que você achar mais apropriada para ser feito o clone do projeto, como exemplo vou utilizar a pasta projetos dentro de C:.
```bash
cd/
cd projetos
```

<h3>Clonando o repositório </h3>

*	No Console do Cmder, digite o comando:

````bash
git clone https://github.com/conta/nomeprojeto.git

````
Como é possível ver, a estrutura do comando é "git clone [endereço do repositório] .

Feito isso, temos um clone do projeto para que possamos trabalhar e executar os testes automatizados.


Automação de Testes
--------------------

Para a automação de testes algumas gems do Ruby são essenciais, sendo elas:

gem 'appium_lib'
gem 'cucumber'
gem 'faker'
gem 'pry'


Para manter o controle das Gems usadas no projeto, adicione no arquivo Gemfile e serão instaladas de uma só vez.
Com o arquivo Gemfile configurado utilizando o require com o nome das gems, utiliza-se a gem bundler para instalação das dependências listadas:
gem install bundler


<h3>Aprendendo a usar o env.rb</h3>

*	O env.rb inicializa configurações do teste, tal como o navegador que deve ser utilizado.
*	O require sob em memória os arquivos das Gems necessárias.

<h3>Hooks.rb</h3>

O termo hook do inglês significa gancho. E trazendo para o nosso contexto de automação, o arquivo hooks.rb é quem armazena todo o código que fará uma ação em momentos que serão estabelecidos através deste arquivo.
Por exemplo, dois momentos em que podemos acrescentar ações em nossa automação é:

*	Antes da nossa automação iniciar a execução, que é o período antes de um cenário de teste iniciar a execução.
*	E após o termino da execução de um cenário, período após finalizar um cenário de teste.

O Ruby entende estes momentos quando utilizamos as seguintes palavras chaves:

*	Before
*	After

<h3>Utilizando Tags</h3>

Utilizamos a tag para diferenciar os cenários por grupos, funcionalidades ou etapas de testes. As tags são inseridas na linha de cima do nome do cenário.
No terminal, quando quisermos rodar os cenários que estão nomeados com tags, basta utilizarmos o seguinte comando:

Cucumber –-tag @nome_da_tag
Ou 
Cucumber –t @nome_da_tag

Esse comando rodará todos os cenários que tiverem a tag.

Na pasta raiz do projeto é gerado um arquivo HTML com o report dos cenários de testes.

Basta abrir no seu navegador e visualizar o resultado.

Ou se  preferir apenas cucumber para executar todo o projeto.

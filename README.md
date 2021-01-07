# 🤖 robot-framework appium boilerplate

## Tecnologias utilizadas:

- python 3.8.x
- pipenv (para gerenciamento de packages do python)
- robot + appiumlibrary

## Como instalar dependências:

1. Clone o repositório: `git clone git@github.com:manoelrsneto/robot-boilerplate.git <nome_do_projeto>`
2. Acesse o repositório clonado: `cd <nome_do_projeto>`
3. Instale as dependências utilizando o pipenv: `pipenv install`

## Como rodar os testes:

1. Crie uma pasta chamada `apps`
2. Coloque o app em teste dentro da pasta (.apk ou .ipa)
3. Para rodar e gerar evidências use algum dos scripts existentes no pipfile

## Como contribuir:

Após instalar as dependências, os arquivos serão criados seguindo esse modelo, dentro de suas respectivas pastas:

### Specs:

Todos os testes serão escritos dentro da pasta `specs` e seus respectivos passos dentro da pasta `steps` seguindo o seguinte modelo:

1. Para nome do arquivo de specs, ele deverá ser nomeado com a feature em si. Ex: `wihtdraw.robot`
2. Para o nome do arquivo de steps, ele deverá ser nomeado com a feature em si e o sufixo `step` após o nome. Ex: `withdraw-steps.robot`

### Resources:

Resources são os arquivos que servem de suporte para os test-cases escritos e consistem nos seguintes tipos:

1. Base: Arquivo responsável por guardar todos os parâmetros de inicialização de um app e também pelo setup e teardown dos testes, sejam eles IOS ou Android. Deverá ser nomeado como: `base.robot` ou `base-android.robot` ou `base-ios.robot`
2. Elements: Arquivo responsável por guardar todos os elementos da página que estaremos interagindo dentro dos test-cases, é necessário criar um arquivo por página para facilitar sua leitura, manutenção e organização. Deverá ser nomeado com a feature em si seguido do sufixo `elements` após o nome. Ex: `withdraw-elements.feature`

## Arquitetura de folders:

```
robot-boilerplate
    ├── apps
    |       ├── app.apk
    |       └── app.ipa
    ├── others
    |       └── evidences
    |               ├── log.html
    |               ├── output.xml
    |               ├── report.html
    |               └── appium-screenshot-x.png
    ├── resources
    |       ├── base.robot
    |       └── any-elements.robot
    └── specs
            ├── steps
            |       └── any-steps.robot
            └── any-spec.robot
```

## Aplicativo de Controle de Hábitos 📝
Este projeto é uma atividade prática avaliativa para a disciplina de Desenvolvimento para Dispositivos Móveis do curso de Análise e Desenvolvimento de Desenvolvimento de Sistemas.


Aluno: Felipe ribeiro Pelentil 


Professor: Gabriel Caixeta Silva

## Descrição do Projeto
O aplicativo foi desenvolvido em Flutter com o objetivo de permitir que o usuário gerencie e acompanhe seus hábitos diários. Ele permite a visualização de uma lista de tarefas, a marcação de itens concluídos e a adição de novos hábitos para organização pessoal.

## Funcionalidades ImplementadasConforme os requisitos obrigatórios da atividade, o app conta com:
Lista Dinâmica: Exibição de hábitos utilizando ListView.
Gerenciamento de Estado: Uso de StatefulWidget e setState para atualizar a interface em tempo real.
Persistência Visual: Hábitos concluídos exibem um estilo visual diferenciado (texto riscado).Programação Assíncrona: Simulação de carregamento de dados vindo de uma API/Banco de dados utilizando async, await e Future.
delayed.Navegação entre Telas: Uso de Navigator.push para exibir detalhes específicos de cada hábito.
Criação de Hábitos: Interface interativa para adicionar novos itens à lista.

## Prints das Telas

| Lista de Hábitos | Cadastro de Hábitos | Detalhes dos Hábitos | Hábito Concluido |
| :---: | :---: | :---: | :---: |
| ![Lista](/assets/home.png) | ![Cadastro](/assets/cadastro.png) | ![Detalhes](/assets/detalhes.png) | ![Concluido](/assets/concluido.png)

## Como Executar o Projeto
Para rodar este projeto localmente, siga os passos abaixo:

Clonar o repositório:

git clone https://github.com/felps02/mini_projeto

Entrar na pasta do projeto:

cd mini_projeto

Instalar as dependências:

flutter pub get

Executar o aplicativo:

flutter run

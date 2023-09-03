![Projeto_de_Automação_de_TestesAdvantageOnlineShopping](https://github.com/pedroomartinelli/PB_Sprint5/assets/141445664/1d2dbb6b-137a-4a7f-9813-ab9e1491a35f)

![Static Badge](https://img.shields.io/badge/pedr1o-%20100%25-green?logo=cucumber&label=Coverage%20Tests&labelColor=black&color=Green)
![Static Badge](https://img.shields.io/badge/Status-Development-yellow?label=Status&labelColor=black&color=yellow)
![Static Badge](https://img.shields.io/badge/Programming%20Language-Ruby3.2.2-red?logo=ruby&label=Programming%20Language&labelColor=black&color=red) 

# Projeto de Automação de Testes

Este projeto é uma automação de testes utilizando Cucumber, SitePrism e Capybara em Ruby 3.2.2, executado no sistema operacional Windows 10. Os testes foram criados para o site [Advantage Online Shopping](http://www.advantageonlineshopping.com/#/).

## Mapa Mental 🗺️
Este é o mapa mental criado para os fluxos prioritários de testes.
![AdvantageOnlineShopping](https://github.com/pedroomartinelli/PB_Sprint5/assets/141445664/5e707507-206e-4c40-aba7-faa5824f1934)

## Pré-requisitos ✔️

Antes de executar os testes, certifique-se de que você tenha as seguintes ferramentas e dependências instaladas em seu ambiente de desenvolvimento:

- Ruby 3.2.2: [Instalação do Ruby](https://www.ruby-lang.org/pt/documentation/installation/)
- Bundler: `gem install bundler`
- [ChromeDriver v116.0.5845.96](https://googlechromelabs.github.io/chrome-for-testing/#stable) : [Instruções de instalação do ChromeDriver](https://sites.google.com/chromium.org/driver/)

## Instalação 👨‍🔧

1. Clone este repositório para o seu ambiente de desenvolvimento:

~~~
git clone https://github.com/seu-usuario/seu-projeto-de-automacao.git
cd seu-projeto-de-automacao
~~~


2. Instale as dependências do Ruby listadas no arquivo Gemfile executando o seguinte comando:

~~~
bundle install
~~~

## Executando os Testes 🕵️
Para executar os testes automatizados, utilize o seguinte comando:

~~~
bundle exec cucumber -p default
~~~

Este comando iniciará a execução de todos os testes Cucumber. Para a execução dos steps de testes separadamente basta usar as TAG's usadas nos arquivos ".feature" com um "-t" antes da TAG, como o exemplo abaixo:

~~~
bundle exec cucumber -p default -t@TAG
~~~

As TAG's disponiveis para esse projeto são:
* **@regression**
* **@search**
  * **@search_for_product**
  * **@search_for_different_product**
* **@contact**
  * **@contact_ok**
* **@pdp**
  * **@change_color_pdp**
  * **@increase_product_quantity**
    * **@increase_product_quantity_only_pdp**
    * **@increase_product_quantity_validate_cart**
  * **@add_product_to_cart_pdp**

## Estrutura do Projeto 🗃️ 
* features/: Contém os arquivos de especificação em linguagem Gherkin.
* features/step_definitions/: Contém os passos de teste correspondentes às especificações.
* features/support/: Contém arquivos de suporte para configuração e utilitários.
* features/pages/: Contém classes SitePrism para representar as páginas do site.
* features/reports/: Contém relatórios e Screenshots gerados após a execução dos testes automatizados.
* Gemfile: Lista de dependências Ruby.
* README.md: Este arquivo.

## Configuração do Ambiente ⚙️
Certifique-se de configurar a pata features/support com as configurações relevantes para a execução dos testes.
* Como a URL do site de teste support/environment/prd.yml
* E as configurações do driver do navegador support/factory/env.rb 

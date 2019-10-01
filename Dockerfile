# Dockerfile
# Buscar um container com o Ruby 2.5
# Setar o email
# Instalar pacotes do Debian
# Criar o Diretório da aplicação no container
# Setar como diretório de trabalho, o diretório do container
# Copiar os arquivos locais Gemfile e Gemfile.lock para o container
# Rodar o bundle install no container para instalar o Rails do Gemfile
#


FROM ruby:2.5
MAINTAINER tomazmcn@gmail.com
RUN apt-get update -qq && apt-get install -y build-essential nodejs postgresql-client
RUN mkdir -p /crypto_wallet
WORKDIR /crypto_wallet
COPY Gemfile /crypto_wallet/Gemfile
COPY Gemfile.lock /crypto_wallet/Gemfile.lock
RUN bundle install
COPY . /crypto_wallet

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]

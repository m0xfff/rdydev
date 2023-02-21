FROM mcr.microsoft.com/vscode/devcontainers/base:bullseye

# [Optional] Uncomment this section to install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends build-essential cmake default-libmysqlclient-dev default-mysql-client wait-for-it

# [Optional] Uncomment this line to install additional gems.
# RUN gem install <your-package-here>

# This section copies the mysql client configuration to the dev container so the user doesn't have to pass the mysql username & password each time
COPY --chmod=664 ./.devcontainer/my.cnf /etc/mysql/my.cnf

# [Optional] Uncomment this line to install global node packages.
# RUN su vscode -c "source /usr/local/share/nvm/nvm.sh && npm install -g <your-package-here>" 2>&1
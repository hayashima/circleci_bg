FROM circleci/ruby:2.3.3-node
MAINTAINER <ak.hisashi@gmail.com>

# PostgreSQL9.5
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
RUN sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main" >> /etc/apt/sources.list.d/postgresql.list'
RUN sudo apt-get update
RUN sudo apt-get install postgresql-client-9.5

# fonts
RUN sudo apt-get install fontconfig fonts-migmix

FROM cimg/ruby:3.0.4-node
MAINTAINER <ak.hisashi@gmail.com>

# PostgreSQL10
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
RUN sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main" >> /etc/apt/sources.list.d/postgresql.list'
RUN sudo apt-get update
RUN sudo apt-get install postgresql-client-10

# fonts
RUN sudo apt-get install fontconfig fonts-migmix

# Chrome
RUN sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
RUN sudo sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN sudo apt-get update
RUN sudo apt-get install google-chrome-stable

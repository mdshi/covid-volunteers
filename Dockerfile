FROM ruby:2.6.6

# install yarn
RUN curl https://deb.nodesource.com/setup_12.x | bash
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs yarn postgresql-client \
&& rm -rf /var/lib/apt/lists/*
RUN gem update --system
RUN gem install rake rails bundler

RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
#COPY Gemfile /myapp/Gemfile.lock

RUN bundle install
RUN bundle config set path 'vendor/cache'

COPY . /myapp

COPY entrypoint.sh /myapp
RUN chmod 755 /myapp/entrypoint.sh

CMD ["sh", "entrypoint.sh"]
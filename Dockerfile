FROM ruby:2.6.3

# install yarn
RUN curl https://deb.nodesource.com/setup_12.x | bash && \
    curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs yarn && \
    gem update --system && \
    gem install rails bundler

WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
RUN bundle install
RUN yarn install

COPY package.json package-lock.json yarn.lock /myapp/
RUN yarn install 

COPY . /myapp

ENV RAILS_ENV=production
RUN ./bin/webpack

EXPOSE 3000
CMD ["sh", "entrypoint.sh"]

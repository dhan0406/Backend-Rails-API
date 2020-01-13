FROM ruby:2.5.5

COPY ./ /rails-api
WORKDIR /rails-api

RUN gem install bundler rails
RUN bundle install

EXPOSE 3000

ENTRYPOINT [ "rails", "server", "-b", "0.0.0.0"]
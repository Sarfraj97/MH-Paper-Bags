FROM ruby:3.0.0 as base

RUN apt-get update -qq && apt-get install -y build-essential apt-utils libpq-dev nodejs

WORKDIR /Rails-Docker

RUN gem install bundler

COPY Gemfile* ./

RUN bundle install

ARG DEFAULT_PORT 5000

EXPOSE ${DEFAULT_PORT}

CMD ["rails", "server", "-b", "0.0.0.0"]
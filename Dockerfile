FROM ruby:2.5

RUN mkdir /resque_test
WORKDIR /resque_test

COPY Gemfile* /resque_test/
RUN bundle install
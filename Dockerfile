FROM ruby:2.6.3
COPY . /application
WORKDIR /application
RUN bundle install --deployment --without development test

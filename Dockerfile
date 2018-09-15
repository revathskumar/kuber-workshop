FROM ruby:2.4.1

COPY . /src
WORKDIR /src
RUN bundle install
EXPOSE 3000
CMD rails s
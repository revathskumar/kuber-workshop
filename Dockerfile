FROM ruby:2.5.1

COPY . /src
WORKDIR /src
RUN bundle install
EXPOSE 3000
CMD rails s
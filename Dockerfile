FROM ruby:3.0.0-alpine as Builder

RUN apk add --update --no-cache \
    build-base \
    postgresql-dev \
    git \
    tzdata

RUN gem install bundler

WORKDIR /simple_analytics

COPY . /simple_analytics/

RUN bundle install

FROM ruby:3.0.0-alpine as Final

RUN apk add --update --no-cache \
    build-base \
    postgresql-client \
    tzdata \
    file \
    git

COPY --from=Builder /usr/local/bundle/ /usr/local/bundle/
COPY --from=Builder /simple_analytics/ /simple_analytics/

WORKDIR /simple_analytics

EXPOSE 3000
CMD bin/docker-entrypoint

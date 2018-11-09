FROM ruby:2.3.6-alpine

ENV DOCKER true
ENV INSTALL_PATH /app

RUN addgroup -g 1000 -S docker && \
  adduser -u 1000 -S -G docker docker

WORKDIR $INSTALL_PATH

# bundle install
COPY --chown=docker:docker Gemfile Gemfile.lock ./
ARG RUN_PACKAGES="ca-certificates fontconfig mariadb-dev nodejs tzdata git"
ARG BUILD_PACKAGES="ruby-dev build-base linux-headers mysql-dev python"
RUN apk add --no-cache --update $RUN_PACKAGES $BUILD_PACKAGES \
  && gem install bundler -v '1.16.6' \
  && bundle config --local github.https true \
  && bundle install --without no_docker --jobs 20 --retry 5 \
  && rm -rf /root/.bundle && rm -rf /root/.gem \
  && rm -rf /usr/local/bundle/cache \
  && apk del $BUILD_PACKAGES \
  && chown -R docker:docker /usr/local/bundle

USER docker
COPY --chown=docker:docker . .

USER docker
EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

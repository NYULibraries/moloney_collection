FROM ruby:2.6.2-alpine

ENV DOCKER true
ENV INSTALL_PATH /app
ARG PACKAGES="ca-certificates fontconfig mariadb-dev nodejs tzdata git ruby-dev build-base linux-headers mysql-dev python"

RUN apk add --no-cache --update $PACKAGES

# Prepare bundle caching directory
RUN mkdir -p /bundle && chown 1000:2000 /bundle

# Add bundle entry point to handle bundle cache
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

RUN addgroup -g 1000 -S docker && \
  adduser -u 1000 -S -G docker docker
USER docker

WORKDIR $INSTALL_PATH

# Copy source into container
COPY --chown=docker:docker . .

ENV BUNDLE_PATH=/bundle \
  BUNDLE_BIN=/bundle/bin \
  GEM_HOME=/bundle
ENV PATH="${BUNDLE_BIN}:${PATH}"
RUN gem install bundler -v 2.0.1

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

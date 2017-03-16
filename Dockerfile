FROM elixir

RUN set -ex \
    && apt-get update \
    && apt-get install -y curl imagemagick

COPY policy.xml /etc/ImageMagick-6/

RUN mkdir /code
WORKDIR /code

ADD . /code

RUN mix local.hex --force \
    && mix compile

ENTRYPOINT ["mix", "medusa", "stack"]

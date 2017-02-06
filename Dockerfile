FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.7

RUN gem install daengine --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["process_assets"]
CMD ["--help"]

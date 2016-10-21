FROM ruby:2.3.0
MAINTAINER Mark Kreyman <mark.kreyman@optum.com>

RUN apt-get update -qq && \
    apt-get install -qq -y --no-install-recommends vim \
      autoconf \
      build-essential \
      libpq-dev \
      libxml2-dev \
      libxslt-dev \
      libmagick++-dev \
      nodejs \
      git && \
    rm -rf /var/lib/apt/lists/*

ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
VOLUME $APP_HOME

# Using a custom bundle location here, so we could then use the same image
# for the bundle container to cache all gems.
ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile \
    BUNDLE_JOBS=2 \
    BUNDLE_PATH=/bundle

ADD Gemfile* $APP_HOME/

# Replacing git protocol with https,
# as gems pulled from github wouldn't fetch otherwise.
RUN git config --global url."https://".insteadOf git://

RUN gem install bundler && bundle install

# Running bundle install again to catch up on any changes in Gemfile
CMD bundle install && rails s -p 3000 -b 0.0.0.0

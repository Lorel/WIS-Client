FROM ruby:2.2.4

RUN apt-get update -qq && apt-get --assume-yes -qq upgrade && \
	apt-get install --assume-yes -qq nodejs git 

RUN gem install bundler

RUN mkdir /usr/src/app
ADD . /usr/src/app
WORKDIR /usr/src/app

RUN bundle install

ENV PORT 80
ENV RACK_ENV production

EXPOSE 80


CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]

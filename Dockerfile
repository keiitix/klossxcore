FROM ruby:2.5.8
RUN apt-get update -qq && \
    apt-get install -y build-essential \ 
                       libpq-dev \        
                       nodejs
RUN mkdir /KLOSSXCORE
ENV APP_ROOT /KLOSSXCORE
WORKDIR $APP_ROOT
ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock
RUN gem install bundler && bundle install 
ADD . $APP_ROOT
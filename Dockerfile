FROM ruby
#FROM ruby:2.6.3

# Creates Application root
RUN mkdir -p /apptest
WORKDIR /apptest

# Ensure gems are cached and only get updated when they change
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && \
    bundle install

# Copy aplication code from work station
#COPY . /apptest

# FROM ruby:2.5-slim

# LABEL Name=rubyonrailspractice Version=0.0.1

# EXPOSE 3000

# # throw errors if Gemfile has been modified since Gemfile.lock
# RUN bundle config --global frozen 1

# WORKDIR /app
# COPY . /app

# COPY Gemfile Gemfile.lock ./
# RUN bundle install

# CMD ["ruby", "rubyonrailspractice.rb"]

FROM ruby

WORKDIR /Users/damian/OneDrive/Documents/Programming/Workspaces/ruby-on-rails-practice

ENV PORT 3000

EXPOSE $PORT

RUN gem install rails bundler
RUN gem install rails
RUN apt-get update -qq && apt-get install -y nodejs

ENTRYPOINT [ "/bin/bash" ]
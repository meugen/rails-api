FROM ruby:3.0.0
WORKDIR /app
COPY app ./app/
COPY bin ./bin/
COPY config ./config/
COPY db ./db/
COPY lib ./lib/
COPY public ./public/
COPY test ./test/
COPY .ruby-version config.ru Gemfile Gemfile.lock Rakefile ./
RUN bundle install
ENTRYPOINT ["bin/rails", "s"]

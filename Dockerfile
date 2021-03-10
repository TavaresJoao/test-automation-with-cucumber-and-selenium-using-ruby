FROM ruby

RUN mkdir -p /app

WORKDIR /app

COPY Gemfile .

RUN bundle

COPY . .

CMD cucumber
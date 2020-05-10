FROM ruby:2.6.6-buster

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -

RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -yqq --no-install-recommends \
    nodejs \
    yarn

RUN curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -o /chrome.deb
RUN dpkg -i /chrome.deb || apt-get install -yf
RUN rm /chrome.deb

RUN curl https://chromedriver.storage.googleapis.com/83.0.4103.39/chromedriver_linux64.zip -o /usr/local/bin/chromedriver

RUN chmod +x /usr/local/bin/chromedriver

RUN gem install bundler

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock .

ENV BUNDLE_PATH /gems

# RUN bundle install
# RUN yarn install --check-files

COPY . .

# RUN yarn install --check-files

ENTRYPOINT ["./docker-entrypoint.sh"]

CMD ["bin/rails", "s", "-b", "0.0.0.0"]

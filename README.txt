# HOWTO setup project

1. install RVM
2. open terminal and go to project folder
3. install gem bundler      - 'gem install bundler'
4. install all project gems - 'bundle install'

# HOWTO run WEB tests

- all tests in all browsers

  'bundle exec rake' or 'bundle exec rake test:web:all'

- all tests in Firefox browser

  'bundle exec test:web:firefox'

- all tests in Chrome browser

  'bundle exec test:web:chrome'

# HOWTO run MOBILE tests

- all tests in all browsers

  'bundle exec rake' or 'bundle exec rake test:mobile:all'

- all tests in Chrome browser

  'bundle exec test:mobile:chrome'
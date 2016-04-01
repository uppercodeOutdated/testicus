# HOWTO setup project

  1. install RVM
  2. open terminal and go to project folder
  3. install gem bundler      - 'gem install bundler'
  4. install all project gems - 'bundle install'

# ENV variables

  MODE     - global variable which describes devise type ('desktop', 'tablet' or 'mobile')
  PLATFORM - global variable which describes platform of tablet/mobile device ('android' or 'ios')
  BROWSER  - global variable which describes browser :)

# TESTRUN

  bundle exec rake test:all # will run all tests in all modes on all devises in all browsers

  bundle exec rake test:<MODE>:all # will run all tests in <MODE> mode on all devises in all browsers

  bundle exec rake test:<MODE>:<BROWSER> # will run all tests in <MODE> mode on all devises in <BROWSER> browser

  bundle exec rake test:<MODE>:<PLATFORM>:<BROWSER> # will run all tests in <MODE> mode on <PLATFORM> devise in <BROWSER> browser
#require 'rspec'
require 'rspec/core/rake_task'

MODES     = %w{ desktop tablet mobile }.freeze
BROWSERS  = %w{ firefox chrome safari }.freeze
PLATFORMS = %w{ android ios           }.freeze

task default: ['test:desktop:all']

namespace :test do

  task :all do
    Rake::Task['test:desktop:all'].invoke
    Rake::Task['test:tablet:all' ].invoke
    Rake::Task['test:mobile:all' ].invoke
  end

  namespace :desktop do
    task :all do
      BROWSERS.each do |browser|
        Rake::Task["test:desktop:#{browser}"].invoke
      end
    end

    BROWSERS.each do |browser|
      task browser.to_sym do
        task('spec').clear

        ENV['MODE']    = 'desktop'
        ENV['BROWSER'] = browser

        RSpec::Core::RakeTask.new(:spec)
        Rake::Task['spec'].execute 
      end
    end
  end

  namespace :tablet do
    task :all do
      PLATFORMS.each do |plaform|
        BROWSERS.each do |browser| 
          Rake::Task["test:tablet:#{plaform}:#{browser}"].invoke
        end
      end
    end

    PLATFORMS.each do |plaform|
      namespace plaform.to_sym do
        BROWSERS.each do |browser|
          task browser.to_sym do
            task('spec').clear

            ENV['MODE']     = 'tablet'
            ENV['PLATFORM'] = plaform
            ENV['BROWSER']  = browser

            RSpec::Core::RakeTask.new(:spec)
            Rake::Task['spec'].execute 
          end
        end
      end
    end
  end

  namespace :mobile do
    task :all do
      PLATFORMS.each do |plaform|
        BROWSERS.each do |browser| 
          Rake::Task["test:mobile:#{plaform}:#{browser}"].invoke
        end
      end
    end

    PLATFORMS.each do |plaform|
      namespace plaform.to_sym do
        BROWSERS.each do |browser|
          task browser.to_sym do
            task('spec').clear

            ENV['MODE']     = 'mobile'
            ENV['PLATFORM'] = plaform
            ENV['BROWSER']  = browser

            RSpec::Core::RakeTask.new(:spec)
            Rake::Task['spec'].execute 
          end
        end
      end
    end
  end

end

#require 'rspec'
require 'rspec/core/rake_task'

task default: ['test:web:all']

namespace :test do

  task :all do
    Rake::Task['test:mobile:chrome' ].invoke
    Rake::Task['test:web:firefox'   ].invoke
    Rake::Task['test:web:chrome'    ].invoke
  end

  namespace :web do
    task :all do
      Rake::Task['test:web:firefox'].invoke
      Rake::Task['test:web:chrome' ].invoke
    end

    task :firefox do
      task('spec').clear

      ENV['mode']    = 'web'
      ENV['browser'] = 'firefox'

      RSpec::Core::RakeTask.new(:spec)
      Rake::Task['spec'].execute 
    end

    task :chrome do
      task('spec').clear

      ENV['mode']    = 'web'
      ENV['browser'] = 'chrome'

      RSpec::Core::RakeTask.new(:spec)
      Rake::Task['spec'].execute 
    end
  end

  namespace :mobile do
    task :all do
      Rake::Task['test:mobile:chrome' ].invoke
    end

    task :chrome do
      task('spec').clear

      ENV['mode']    = 'mobile'
      ENV['browser'] = 'chrome'

      RSpec::Core::RakeTask.new(:spec)
      Rake::Task['spec'].execute 
    end
  end

end

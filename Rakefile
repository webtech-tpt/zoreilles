# encoding: UTF-8

# loads the environment
task :environment do
  require './config/environment'
end


# similar to Rails `rake console`
task :console => :environment do
  require 'irb'
  ARGV.clear
  IRB.start
end


namespace :db do

  # similar to Rails `rake db:migrate`
  desc "Migrate the database"
  task(:migrate => :environment) do
    ActiveRecord::Migration.verbose = true
    ActiveRecord::Migrator.migrate("db/migrate")
  end

  # similar to Rails `rake db:rollback`
  desc "Rollback the last migration"
  task(:rollback => :environment) do
    ActiveRecord::Migration.verbose = true
    ActiveRecord::Migrator.rollback("db/migrate")
  end

end

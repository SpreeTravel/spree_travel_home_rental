require 'ffaker'

namespace :spree_travel_home_rental do
  desc 'Option Values, Properties, etc. for Home Rental'
  task :load do
    sample_path = File.join(File.dirname(__FILE__), '..', '..', 'db', 'default', 'spree')

    Rake::Task['db:load_dir'].reenable
    Rake::Task['db:load_dir'].invoke(sample_path)
  end
end

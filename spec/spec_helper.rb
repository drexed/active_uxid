# frozen_string_literal: true

require 'active_record'
require 'active_support'
require 'active_uxid'
require 'pathname'
require 'generator_spec'
require 'database_cleaner'

module Rails
  def self.env
    'test'
  end
end

spec_support_path = Pathname.new(File.expand_path('../spec/support', File.dirname(__FILE__)))
spec_tmp_path = Pathname.new(File.expand_path('../spec/lib/generators/tmp', File.dirname(__FILE__)))

ActiveRecord::Base.configurations = YAML::load_file(spec_support_path.join('config/database.yml'))
ActiveRecord::Base.establish_connection

spec_support_path = spec_support_path.join('db/schema.rb')
load(spec_support_path) if File.exist?(spec_support_path)

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) { DatabaseCleaner.start }
  config.after(:each) { DatabaseCleaner.clean }
  config.after(:all) { FileUtils.remove_dir(spec_tmp_path) if File.directory?(spec_tmp_path) }
end

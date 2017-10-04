%w[hash ulid].each do |file_name|
  require "active_uxid/record/#{file_name}"
end

%w[version settings base hash ulid record].each do |file_name|
  require "active_uxid/#{file_name}"
end

require 'generators/active_uxid/install_generator'

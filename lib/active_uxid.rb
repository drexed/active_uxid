%w[version settings generator record].each do |file_name|
  require "active_uxid/#{file_name}"
end

require 'generators/active_uxid/install_generator'

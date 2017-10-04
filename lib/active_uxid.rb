# frozen_string_literal: true

%w[version settings].each do |file_name|
  require "active_uxid/#{file_name}"
end

%w[base hash ulid].each_with_index do |file_name, i|
  require "active_uxid/record/#{file_name}" unless i.zero?
  require "active_uxid/#{file_name}"
end

require 'generators/active_uxid/install_generator'

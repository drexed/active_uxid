# frozen_string_literal: true

%w[version configuration base].each do |file_name|
  require "active_uxid/#{file_name}"
end

%w[hash ulid].each do |file_name|
  require "active_uxid/record/#{file_name}"
  require "active_uxid/#{file_name}"
end

require 'generators/active_uxid/install_generator'

# frozen_string_literal: true

class ActiveUxid::Base

  def initialize
    @config = ActiveUxid.configuration
  end

  ActiveUxid.configuration.instance_variables.each do |setting|
    setting = setting.to_s.tr(':@', '')
    define_method(setting) { @config.send(setting) }
  end

  def encoding_base
    encoding_chars.length
  end

end

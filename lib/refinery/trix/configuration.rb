module Refinery
  module Trix
    include ActiveSupport::Configurable

    config_accessor :enable

    self.enable = false
  end
end

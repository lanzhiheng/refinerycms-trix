module Refinery
  class TrixGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def generate_refinery_initializer
      template "config/initializers/refinery/trix.rb.erb",
               File.join(destination_root, "config", "initializers", "refinery", "trix.rb")
    end
  end
end

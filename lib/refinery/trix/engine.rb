module Refinery
  module Trix
    class Engine < ::Rails::Engine
      isolate_namespace Refinery::Trix

      engine_name :refinery_trix

      config.to_prepare do
        Rails.application.config.assets.precompile += %w(
          trix.css
          trix.js
        )
      end
    end
  end
end

module Refinery
  module Trix
    class Engine < ::Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Trix

      engine_name :refinery_trix

      config.to_prepare do
        Rails.application.config.assets.precompile += %w(
          trix.css
          trix.js
          init_editor.coffee
        )
      end

      after_inclusion do
        %w(trix).each do |stylesheet|
          Refinery::Core.config.register_visual_editor_stylesheet stylesheet
        end

        %w(trix init_editor).each do |javascript|
          Refinery::Core.config.register_visual_editor_javascript javascript
        end

        # Refinery::Pages.config.friendly_id_reserved_words << 'trix'
      end
    end
  end
end

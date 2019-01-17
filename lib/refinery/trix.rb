module Refinery
  module Trix
    class << self
      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end
    end

    require 'refinery/trix/engine'
    require 'refinery/trix/configuration'
  end
end

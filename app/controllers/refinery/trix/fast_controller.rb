require_dependency "refinery/trix/application_controller"

module Refinery::Trix
  class FastController < ApplicationController
    def trixframe
      render :frame, layout: false
    end
  end
end

module Refinery
  class FastController < ActionController::Base
    def trixframe
      render :frame, layout: false
    end
  end
end

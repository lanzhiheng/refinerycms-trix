require 'rails_helper'

module Refinery
  RSpec.describe FastController, type: :controller do
    routes { Refinery::Core::Engine.routes }
    it 'should render the trix template' do
      get :trixframe
      expect(response.status).to eq(200)
      expect(response).to render_template(:frame)
    end
  end
end

Rails.application.routes.draw do
  mount Refinery::Trix::Engine => "/refinery-trix"
end

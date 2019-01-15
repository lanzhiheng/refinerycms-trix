Rails.application.routes.draw do
  mount Refinery::Trix::Engine, :at => Refinery::Core.mounted_path
end

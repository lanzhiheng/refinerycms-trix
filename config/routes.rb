Refinery::Core::Engine.routes.draw do
  get 'trixframe(/:id)', :to => 'fast#trixframe'
end

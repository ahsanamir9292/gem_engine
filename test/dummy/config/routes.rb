Rails.application.routes.draw do
  mount LogsEngine::Engine => "/logs_engine"
end

namespace :api, constraints: { format: :json }, defaults: { format: :json } do
  post :query, to: "queries#execute"
end
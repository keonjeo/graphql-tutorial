Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/api/query"
  end

  namespace :api, constraints: { format: :json }, defaults: { format: :json } do
    post :query, to: "queries#execute"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

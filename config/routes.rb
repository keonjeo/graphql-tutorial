Rails.application.routes.draw do

  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/api/query"
  end

  # api routes module
  draw :api

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

GraphqlSchema = GraphQL::Schema.define do

  # require the whole files from the resolvers directory
  Dir[File.join(Rails.root, 'app/graphql/resolvers/*.rb')].each do |f|
    require f
  end

  mutation(Types::MutationType)
  query(Types::Query)
end

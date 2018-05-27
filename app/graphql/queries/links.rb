Queries::Links = GraphQL::Field.define do
  description 'returns all the links array'
  type !types[Types::Link]

  resolve LinksResolver.new
end
  
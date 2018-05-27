Queries::Links = GraphQL::Field.define do
    description 'returns all the links array'
    type !types[Types::LinkType]
  
    resolve -> (obj, args, ctx) { Link.all }
  end
  
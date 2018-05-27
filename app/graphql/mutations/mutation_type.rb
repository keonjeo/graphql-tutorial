Mutations::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :CreateLink, field: Mutations::CreateLink.field
end

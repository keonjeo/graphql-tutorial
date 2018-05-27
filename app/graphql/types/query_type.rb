Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

  # queries are just represented as fields
  field :all_links, !types[Types::LinkType] do
    description "returns all the links in the system"
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { Link.all }
  end
end

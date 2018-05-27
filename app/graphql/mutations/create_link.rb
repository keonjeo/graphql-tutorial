Mutations::CreateLink = GraphQL::Relay::Mutation.define do
  name 'CreateLink'
  description 'create a link into database'

  input_field :url do
    type !types.String
    description 'the url for link'
  end

  input_field :description do
    type !types.String
    description 'the description for link'
  end
 
  return_field :link do
    type !Types::LinkType
    description 'Link that was successfully added to the database'
  end
 
  resolve -> (_, inputs, _) {
    link = Link.create!(url: inputs[:url], description: inputs[:description])
    {
        link: link
    }
  }
end

###################   How to query this mutaion GQL    ####################

# mutation createNewLink($input: CreateLinkInput!) {
#   CreateLink(input: $input) {
#     link {
#       id
#       url
#       description
#     }
#   }
# }

#######################
##  query variables  ##
#######################

# {
#   "input": {
#     "url": "https://www.baidu.com",
#     "description": "Hello world"
#   }
# }

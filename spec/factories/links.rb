
# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryBot.define do
  factory :link do
    url                              'https://www.grahpql.com'
    description                      'This is a description for graphql'
  end
end

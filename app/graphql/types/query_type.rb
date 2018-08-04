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
  # types[Types::ObjectType] == Array / Multiple value
  # types.ObjectType == Single value
  field :users, types[Types::UserType] do
    description "Get All User ID and Email"
    resolve -> (obj, args, ctx) {
      User.all
    }
  end

  field :phonebooks, types[Types::PhonebookType] do
    resolve -> (obj, args, ctx) {
      Phonebook.all
    }
  end
end

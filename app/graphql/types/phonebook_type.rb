Types::PhonebookType = GraphQL::ObjectType.define do
  name "Phonebook"
  field :id, Types::ID,Type
  field :name, Types::String,Type
  field :number, Types::String,Type
  field :address, Types::String,Type
  field :email, Types::String,Type
  field :birthday, types.String
end

Types::UserType = GraphQL::ObjectType.define do
  name "User"
  field :id, Types::ID,Type
  field :email, types.String
end

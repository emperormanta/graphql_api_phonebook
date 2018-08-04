Types::PhonebookType = GraphQL::ObjectType.define do
  name "Phonebook"
  
  field :id, !types.ID
  field :detail, !types.String do 
    resolve->(phonebook, args, ctx) {phonebook.name + " - " + phonebook.number}
  end
  field :user, Types::UserType

end

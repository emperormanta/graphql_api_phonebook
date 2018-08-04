class Functions::createUser < GraphQL::Function
  # Define `initialize` to store field-level options, eg
  #
  #     field :myField, function: Functions::createUser.new(type: MyType)
  #
  # attr_reader :type
  # def initialize(type:)
  #   @type = type
  # end

  # add arguments by type:
  # argument :id, !types.ID

  argument :email, !types.String
  argument :password, !types.String
  argument :admin, !types.Boolean

  type Types::UserType

  # Resolve function:
  def call(obj, args, ctx)
    User.create!(
      email: args[:email],
      password: args[:password],
      admin: args[:admin]
    )
  end
end

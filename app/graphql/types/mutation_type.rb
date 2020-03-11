module Types
  class MutationType < Types::BaseObject
    # TODO: remove me

    field :create_author, mutation: Mutations::CreateAuthor
    field :update_author, mutation: Mutations::UpdateAuthor
    field :create_book, mutation: Mutations::CreateBook
  end
end


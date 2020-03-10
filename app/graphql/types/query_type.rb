module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :authors, [AuthorType], null:true

    field :author, AuthorType, null: true do
      argument :id, ID, required: true
    end

    field :books, [BookType], null: true

    field :book, BookType, null: true do
      argument :id, ID, required: true
    end

    def authors
      Author.all
    end

    def author(id:)
      Author.find(id)
    end

    def books
      Book.all
    end

    def book(id:)
      Book.find(id)
    end

  end
end

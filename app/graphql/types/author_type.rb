module Types
    class AuthorType < Types::BaseObject
        description "An author"
        field :id, ID, null: false
        field :name, String, null: false
        field :age, Integer, null: false
        field :books, [BookType], null: true
    end
end
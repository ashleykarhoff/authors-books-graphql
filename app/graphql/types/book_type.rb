module Types
    class BookType < Types::BaseObject
        description "Books belonging to an author"
        field :id, ID, null: false
        field :title, String, null: false
        field :genre, String, null: false
        field :author, AuthorType, null: false
    end
end
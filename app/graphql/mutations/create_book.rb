class Mutations::CreateBook < Mutations::BaseMutation
    null true

    argument :title, String, required: true
    argument :genre, String, required: true 
    argument :author_id, Integer, required: true 

    field :book, Types::BookType, null: true
    field :errors, [String], null: false

    def resolve(title:, genre:, author_id:)
        book = Book.new(title: title, genre: genre, author_id: author_id)

        if book.save
            {
                book: book,
                errors: []
            }
        else
            {
                book: nil,
                errors: book.errors.full_messages
            }
        end
    end
end
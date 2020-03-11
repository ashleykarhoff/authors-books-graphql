class Mutations::UpdateAuthor < Mutations::BaseMutation
    null true

    argument :id, ID, required: true
    argument :name, String, required: false
    argument :age, Integer, required: false

    field :author, Types::AuthorType, null: true
    field :errors, [String], null: false

    def resolve(id:, name:, age:)
        author = Author.find(id)
        author.update(name: name, age: age)

        if author.save
            {
                author: author,
                errors: []
            }
        else
            {
                author: nil,
                errors: author.errors.full_messages
            }
        end
    end
end
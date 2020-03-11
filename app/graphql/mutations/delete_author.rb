class Mutations::DeleteAuthor < Mutations::BaseMutation
    null true

    argument :id, ID, required: true 

    field :message, String, null: true
    field :errors, [String], null: false

    def resolve(id:)
        author = Author.find(id)
        author.destroy

        if !author 
            {
                message: "Author successfully deleted"
            }
        else
            {
                errors: author.errors.full_messages
            }
        end
    end
    
end
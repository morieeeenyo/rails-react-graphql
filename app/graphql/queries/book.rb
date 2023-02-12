module Queries
  class Book < Queries::BaseQuery
    argument :id, ID, required: true

    type ObjectTypes::BookType, null: false

    def resolve(id:)
      ::Book.find(id)
    end
  end
end
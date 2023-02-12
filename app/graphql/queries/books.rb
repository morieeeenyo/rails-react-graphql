module Queries
  class Books < Queries::BaseQuery

    type [ObjectTypes::BookType], null: false

    def resolve
      ::Book.all.order(:id)
    end
  end
end
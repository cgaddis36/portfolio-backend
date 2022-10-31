module Queries 
  class FindProject < Queries::BaseQuery 
    type Types::ProjectType, null: false
    argument :id, String, required: true

    def resolve(id:)
      Project.find(id) 
    end 
  end 
end 
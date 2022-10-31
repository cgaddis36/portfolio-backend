module Queries 
  class Projects < Queries::BaseQuery 
    type [Types::ProjectType], null: false 
    
    def resolve
      Project.all
    end 
  end 
end   
module Queries 
  class FindDeveloper < Queries::BaseQuery
    type Types::DeveloperType, null: false 
    
    def resolve 
      Developer.first
    end 
  end 
end 
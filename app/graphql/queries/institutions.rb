module Queries 
  class Institutions < Queries::BaseQuery 
    type [Types::InstitutionType], null: false
    def resolve 
      Institution.all
    end   
  end 
end 
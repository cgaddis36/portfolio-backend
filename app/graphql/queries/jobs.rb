module Queries 
  class Jobs < Queries::BaseQuery
    type [Types::JobType], null: false
    def resolve 
      Job.all 
    end 
  end 
end 
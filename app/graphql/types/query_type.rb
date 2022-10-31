module Types
  class QueryType < Types::BaseObject
  

    field :projects, resolver: Queries::Projects 

  end
end

module Types
  class QueryType < Types::BaseObject
    field :find_project, resolver: Queries::FindProject
    field :projects, resolver: Queries::Projects 
  end
end

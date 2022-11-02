module Types
  class QueryType < Types::BaseObject
    field :find_project, resolver: Queries::FindProject
    field :projects, resolver: Queries::Projects 
    field :institutions, resolver: Queries::Institutions
    field :jobs, resolver: Queries::Jobs
  end
end

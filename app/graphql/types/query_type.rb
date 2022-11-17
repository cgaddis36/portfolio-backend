module Types
  class QueryType < Types::BaseObject
    field :find_developer, resolver: Queries::FindDeveloper
  end
end

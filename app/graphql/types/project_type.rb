# frozen_string_literal: true

module Types
  class ProjectType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :url, String
    field :github, String
    field :classification, String
    field :description, String
    field :frameworks, [String]
    field :hosts, [String]
    field :apis, [String]
    field :features, [String]
    field :job, Types::JobType
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end

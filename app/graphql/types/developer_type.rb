# frozen_string_literal: true

module Types
  class DeveloperType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String
    field :last_name, String
    field :background, String
    field :github, String
    field :title, String
    field :email, String
    field :phone, String
    field :projects, [Types::ProjectType]
    field :hobbies, [Types::HobbyType]
    field :institutions, [Types::InstitutionType]
    field :jobs, [Types::JobType]
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end

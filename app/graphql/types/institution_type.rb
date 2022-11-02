# frozen_string_literal: true

module Types
  class InstitutionType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :city, String
    field :state, String
    field :degree, String
    field :major, String
    field :graduation, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end

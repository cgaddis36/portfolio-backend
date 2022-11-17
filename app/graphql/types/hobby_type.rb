# frozen_string_literal: true

module Types
  class HobbyType < Types::BaseObject
    field :id, ID, null: false
    field :developer_id, Integer, null: false
    field :name, String
    field :image, String
    field :video, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end

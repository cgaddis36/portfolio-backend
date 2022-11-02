# frozen_string_literal: true

module Types
  class JobType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :industry, String
    field :company, String
    field :summary, String
    field :start_date, String
    field :end_date, String
    field :city, String 
    field :state, String
    field :projects, [Types::ProjectType]
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end

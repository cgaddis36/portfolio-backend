require 'rails_helper'

RSpec.describe 'Fetch Institutions', type: :request do 
  before(:each) do 
    institution = Institution.create(
      name: "Institution 1",
      city: "NYC",
      state: "New York",
      degree: "Masters",
      major: "Chemical Engineering",
      graduation: "12/12/1998"
    )
    institution0 = Institution.create(
      name: "Institution 2",
      city: "Destin",
      state: "Florida",
      degree: "Bachelor's",
      major: "Economics",
      graduation: "12/12/1994"
    )
  end 
  it 'Fetches each institution' do 
    post "/graphql", params: { query: query_string }
    expect(response).to be_successful
    reply = JSON.parse(response.body, symbolize_names: true)
    data = reply[:data] 
    institutions = data[:institutions]
    expect(institutions.count).to eq(2)
  end 
  def query_string 
    <<~GQL
      query {
        institutions {
          name 
          city 
          state
          degree 
          major 
          graduation
        }
      }
    GQL
  end 
end 
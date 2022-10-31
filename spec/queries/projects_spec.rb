require 'rails_helper'

RSpec.describe 'Fetch Projects', type: :request do 
  before(:each) do 
    @project0 = Project.create(
      name: 'Project 1',
      description: 'nice project',
      frameworks: ['ruby on rails', 'react'],
      url: 'project1.example.com',
      hosts: ['AWS Amplify', 'Elastic Beanstalk']
    )
    @project1 = Project.create(
      name: 'Project 2',
      description: 'really great project',
      frameworks: ['python flask', 'react'],
      url: 'project2.example.com',
      hosts: ['AWS Amplify', 'Elastic Beanstalk']
    )
  end 
  it "Fetches each project in the Database" do 
    post "/graphql", params: { query: query_string }

    expect(response).to be_successful
    reply = JSON.parse(response.body, symbolize_names: true)
    projects_data = reply[:data][:projects]
    expect(projects_data.count).to eq(2)
  end 
  def query_string 
    <<~GQL
      query{
        projects{
          name
          description
          url
          frameworks
          hosts
        }
      }
    GQL
  end 
end 
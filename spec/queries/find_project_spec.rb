require 'rails_helper'

RSpec.describe 'Find Project query', type: :request do 
  before(:each) do 
    @project0 = Project.create(
      name: 'Project 1',
      description: 'nice project',
      frameworks: ['rails', 'react'],
      url: 'project1.example.com',
      hosts: ['AWS Amplify', 'Elastic Beanstalk'],
      languages: ['ruby', 'javascript']
    )
    @project1 = Project.create(
      name: 'Project 2',
      description: 'really great project',
      frameworks: ['flask', 'react'],
      url: 'project2.example.com',
      hosts: ['AWS Amplify', 'Elastic Beanstalk'],
      languages: ['python', 'javascript']
    )
  end 
  it 'Fetches each project by Id' do 
    post '/graphql', params: { query: query_string(@project0.id.to_s) }
    expect(response).to be_successful
    reply = JSON.parse(response.body, symbolize_names: true)
    project_data = reply[:data][:findProject]

    expect(project_data[:description]).to eq(@project0.description)

  end 
  def query_string(id)
    <<~GQL
      query{
        findProject(id: "#{id}") {
          name 
          description
          frameworks 
          hosts
        }
      }
    GQL
  end 
end 
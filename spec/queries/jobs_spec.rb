require 'rails_helper'

RSpec.describe 'Jobs query', type: :request do 
  before(:each) do 
    @job = Job.create(
      title: 'Teacher',
      industry: 'Education',
      start_date: '12/2020',
      end_date: '12/2021',
      company: 'Destin Elementary School',
      city: 'Destin',
      state: 'FL',
      summary: 'Great job teaching Americas youth'
    )
    @job = Job.create(
      title: 'Janitor',
      industry: 'Education',
      start_date: '10/2022',
      end_date: '11/2022',
      company: 'Destin Middle School',
      city: 'Destin',
      state: 'FL',
      summary: 'Great Job cleaning toilets'
    )
    @job = Job.create(
      title: 'Software Engineer',
      industry: 'Technology',
      start_date: '12/2019',
      end_date: '11/2020',
      company: 'Steamworks',
      city: 'Durango',
      state: 'CO',
      summary: 'Developing full stack apps'
    )
    @project0 = Project.create(
      job_id: @job.id,
      name: 'Project 1',
      description: 'nice project',
      frameworks: ['ruby on rails', 'react'],
      url: 'project1.example.com',
      hosts: ['AWS Amplify', 'Elastic Beanstalk']
    )
    @project1 = Project.create(
      job_id: @job.id,
      name: 'Project 2',
      description: 'really great project',
      frameworks: ['python flask', 'react'],
      url: 'project2.example.com',
      hosts: ['AWS Amplify', 'Elastic Beanstalk']
    )
  end
  it 'Returns all projects ' do 
    post '/graphql', params: { query: query_string }

    expect(response).to be_successful
    reply = JSON.parse(response.body, symbolize_names: true)
    data = reply[:data]
    jobs_data = data[:jobs]
    expect(jobs_data.count).to eq(3)
  end 
  def query_string 
    <<~GQL 
      query {
        jobs {
          title 
          industry
          company 
          startDate 
          endDate
          city 
          state
          summary
          projects {
            id
            name
          }
        }
      }
    GQL
  end 
end 
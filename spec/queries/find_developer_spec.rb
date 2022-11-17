require 'rails_helper'

RSpec.describe 'Fetch Developer', type: :request do 
  before(:each) do 
    @developer = Developer.create(first_name: "Developer", last_name: "Bob", email: "Developer@example.com")
    @hobby0 = Hobby.create(name: "Hobby0", developer_id: @developer.id, image: "image0", video: "video0")
    @hobby1 = Hobby.create(name: "Hobby1", developer_id: @developer.id, image: "image1", video: "video1")
    @institution0 = Institution.create(name: "Institution", city: "Bronx", state: "NY", degree: "Bachelor's", major: "Architecture", graduation: "November 2020" )
    @institution1 = Institution.create(name: "Institution 1", city: "Cheyenne", state: "WY", degree: "Masters", major: "Economics", graduation: "November 2021" )
    @job0 = Job.create(
      developer_id: @developer.id,
      title: "Full Stack Engineer",
      company: 'Comnpany',
      industry: 'Property Management',
      start_date: '07/2021',
      end_date: '08/2022',
      city: 'New York',
      state: 'NY',
      summary: 'Designed & developed mocro services. Remote role.'
    )

    @job1 = Job.create(
      developer_id: @developer.id,
      title: 'Software Developer',
      company: 'Self-Employed',
      industry: 'Tech',
      start_date: '04/2021',
      end_date: '08/2021',
      city: 'Jacksonville',
      state: 'FL',
      summary: 'Developed an iOS application.' 
    )

    @project0 = Project.create(
      developer_id: @developer.id,
      job_id: @job1.id, 
      name: 'Blues',
      classification: 'Personal Project',
      url: 'https://www.bluesmancharters.com',
      github: 'https://github.com/cgaddis36/bluesman-charter',
      hosts: ['AWS Amplify'],
      frameworks: ['React'],
      languages: ['javascript'],
      features: ['Informational Webpage', 
      'PWA scaled for mobile and web use'],
      description: 'Progressive web application designed to help a 
      local charter boat business in Destin, FL easily book charters.'
    )
    @project1 = Project.create(
      developer_id: @developer.id,
      name: 'Portfolio Site',
      classification: 'Personal Project',
      url: 'https://www.chasegaddis.com',
      github: 'https://github.com/cgaddis36/portfolio-site',
      hosts: ['AWS Amplify', 'AWS Elastic Beanstalk', 'RDS Database'],
      frameworks: ['Rails', 'GraphQL', 'React'],
      languages: ['ruby', 'javascript', 'psql'],
      apis: ['Constructed Api'],
      features: ['Unique Database Construction'],
      description: 'Web application designed to showcase development projects.'
    )
  end 
  it 'Fetches the object and associated objects' do 
    post "/graphql", params: {query: query_string}
    expect(response).to be_successful
    reply = JSON.parse(response.body, symbolize_names: true)

    developer = reply[:data][:findDeveloper]
    expect(developer[:firstName]).to eq(@developer.first_name)
    expect(developer[:hobbies].count).to eq(2)
  end
  def query_string 
    <<~GQL
      query {
        findDeveloper{
          firstName 
          lastName 
          background 
          github 
          email 
          phone 
          hobbies {
            name 
            video 
            image
          }
          institutions {
            name 
            degree
            major 
            city
            state
            graduation
          }
          jobs {
            title
            industry 
            company 
            city
            state
            summary
            startDate
            endDate
          }
          projects {
            name 
            description
            url 
            github
            features
            frameworks
            apis
            hosts
            classification
          }
        }
      }
    GQL
  end 
end
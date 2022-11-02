job = Job.create(
  title: 'Software Developer',
  company: 'Self-employed',
  industry: 'Technology',
  start_date: '08/2021',
  end_date: '11/2021',
  city: 'Destin',
  state: 'FL',
  summary: 'Developed full stack applications focused on solving real world problems & refining my development skills to prepare for my next role on a development team.'
)
job0 = Job.create(
  title: "Full Stack Engineer",
  company: 'LeapEasy',
  industry: 'Property Management Insurance',
  start_date: '07/2021',
  end_date: '07/2022',
  city: 'Jersey City',
  state: 'NJ',
  summary: 'Designed & developed 6 different insurance forms from ideation to production. Worked directly with c-suites. Remote role.'
)

job1 = Job.create(
  title: 'Freelance Software Developer',
  company: 'Self-Employed',
  industry: 'Technology',
  start_date: '04/2021',
  end_date: '08/2021',
  city: 'Destin',
  state: 'FL',
  summary: 'Developed multiple web applications to gain experience showcasing development projects from ideation to production.'
)

job2 = Job.create(
  title: 'Backend Engineer',
  company: 'Promenade.ai',
  industry: 'Social Media',
  start_date: '01/2021',
  end_date: '04/2021',
  city: 'Atlanta',
  state: 'GA',
  summary: 'Designed & developed a backend a microservice to help Veterans locate medical services in their area. Also built an admin dashboard for this application. Remote role.'
)

job3 = Job.create(
  title: 'Territory Sales Manager',
  company: 'Chadwell Supply Co',
  city: 'Dallas',
  state: 'TX',
  summary: 'Managed portfolio of 120 Apartment complexes. In person sales role selling maintenance supplies in East Dallas. History of achieving 6-figure sales metrics.',
  industry: 'Property Management',
  start_date: '01/2019',
  end_date: '06/2019'
)

job4 = Job.create(
  title: 'Business Development Representative',
  company: 'RealPage',
  city: 'Dallas',
  state: 'TX',
  summary: 'Introductory sales position selling property management software. This where I realized I wanted to build software.',
  industry: 'Property Management',
  start_date: '03/2018',
  end_date: '11/2018'
)

project0 = Project.create(
  job_id: job.id, 
  name: 'ShoreCasts',
  classification: 'Personal Project',
  url: 'www.shorecasts.com',
  frameworks: ['Rails', 'GraphQL', 'React'],
  hosts: ['AWS Amplify', 'Elastic Beanstalk', 'RDS database'],
  description: 'Designed to centralize the location 
    for all of the necessary forecasting tools that recreational boaters 
    and saltwater anglers utilize to plan their days on the water.',
  github: 'www.shorecasts.com',
  features: ['User Login', 
  'Fishing Store Locator', 
  'Fishing Guides Locator', 
  'Hourly Weather Predictions', 
  'Daily Weather Predictions', 
  'Wind Forecast', 
  'Water Temperature recordings', 
  'Tidal Height Predictions', 
  'Mailer'],
  apis: ['NOAA Tides & Currents', 'National Weather Service', 'Custom API built designed for Fishing Stores & Guides']
)
project1 = Project.create(
  job_id: job0.id, 
  name: 'Leap Claims Form',
  classification: 'Work Project',
  url: 'https://www.leapeasy.com/claim-form/',
  github: 'https://www.leapeasy.com/claim-form/',
  frameworks: ['Rails', 'GraphQL', 'React'],
  hosts: ['AWS Amplify', 'Elastic Beanstalk', 'RDS database'],
  description: 'Claims form designed to help landlords that work 
    with Leap file insurance claims on their policies.',
  apis: ['Salesforce'],
  features: ['Google Places Autocomplete', 'Salesforce Automation', 'Salesforce Record Mutations']
)
project2 = Project.create(
  job_id: job1.id, 
  name: 'Bluesman Charters',
  classification: 'Personal Project',
  url: 'www.bluesmancharters.com',
  github: 'https://github.com/cgaddis36/bluesman-charter',
  hosts: ['AWS Amplify'],
  frameworks: ['React'],
  features: ['Informational Webpage', 
  'PWA scaled for mobile and web use'],
  description: 'Progressive web application designed to help a 
  local charter boat business in Destin, FL easily book charters.'
)

project3 = Project.create(
  job_id: job2.id, 
  name: 'Project Nexus',
  classification: 'Work Project',
  url: 'www.promenade.ai',
  github: 'www.promendae.ai',
  hosts: ['Heroku'],
  frameworks: ['Rails', 'GraphQL', 'React'],
  apis: ['Constructed Api'],
  features: ['Admin Dashboard', 
  'Custom Location Finder', 
  'Stripe Payment Checkout'],
  description: 'Microservice designed to help veterans locate 
  specific medical services to facilitate their navigation of 
  post-military life.'
)

project4 = Project.create(
  job_id: job.id, 
  name: 'Portfolio Site',
  classification: 'Personal Project',
  url: 'www.chasegaddis.com',
  github: 'https://github.com/cgaddis36/portfolio-site',
  hosts: ['AWS Amplify', 'AWS Elastic Beanstalk', 'RDS Database'],
  frameworks: ['Rails', 'GraphQL', 'React'],
  apis: ['Constructed Api'],
  features: ['Unique Database Construction'],
  description: 'Web application designed to showcase development projects.'
)

project5 = Project.create(
  name: 'Gift of Gab',
  classification: 'School Project',
  url: 'https://gift-of-gab-deployed.herokuapp.com/',
  github: 'https://github.com/GiftOfGab1',
  hosts: ['Heroku'],
  frameworks: ['Rails', 'GraphQL', 'Flask', 'React'],
  apis: ['Constructed Api', 'Text To Speech'],
  features: ['Text to Audio', 'Microservice', 'redux'],
  description: 'Progressive web application designed to facilitate speech for individuals with cognitive disabilities.'
)

project6 = Project.create(
  name: 'Local Spotlight',
  classification: 'School Project',
  url: 'https://polar-caverns-76159.herokuapp.com/',
  github: 'https://github.com/cgaddis36/local_spotlight',
  hosts: ['Heroku'],
  frameworks: ['Rails'],
  apis: ['Spotify'],
  features: ['Spotify Oauth', 'Geographical Location mapping'],
  description: 'Web application designed to locate local up and coming artists for you based on geographical location.'
)

institution0 = Institution.create(
  name: 'University of Georgia',
  degree: 'Bachelors',
  major: 'Consumer Economics',
  graduation: 'Fall 2017',
  city: 'Athens',
  state: 'GA'
)

institution1 = Institution.create(
  name: 'Turing School of Software & Design',
  degree: 'Technical Certificate',
  city: 'Denver',
  state: 'CO',
  graduation: 'Winter 2020',
  major: 'Backend Engineering'
)

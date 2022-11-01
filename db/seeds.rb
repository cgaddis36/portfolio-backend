project0 = Project.create(
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
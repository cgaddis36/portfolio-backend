developer = Developer.create(
  first_name: "Chase", 
  last_name: "Gaddis",
  email: "cgaddis36@gmail.com",
  phone: "(850)582-2223",
  github: "https://github.com/cgaddis36",
  title: "Software Developer",
  background: "My main goal as a developer is to build highly personable applications designed to optimize efficiency and create solutions to real world problems.
  Innovation & collaboration are what drive me in every project I build. Whether it be developing new services for a startup to help Veterans navigate post military life 
  or bringing my own ideas to life, creating new products to solve business problems and provide widespread accessibility to arbitrary data is what greases
  my gears as a developer. When I am not coding, you can find me throwing the ball with my labrador retriever Lilly in one of the local parks or fishing for 
  speckled sea trout & redfish from a kayak. I would be hard pressed to find a better day than hiking to a mountain stream and fly fishing all day."
)

hobby0 = Hobby.create(
  developer_id: developer.id,
  name: "Fly Fishing",
  image: "https://flyfish-photo.s3.amazonaws.com/fly.png",
  video: "https://fishing-video.s3.amazonaws.com/beachFlyFish.mp4"
)

hobby1 = Hobby.create(
  developer_id: developer.id,
  name: "Hiking",
  image: "https://hike-photo.s3.amazonaws.com/hike.png",
  video: "https://hiking-video.s3.amazonaws.com/hiking.mp4"
)

hobby2 = Hobby.create(
  developer_id: developer.id,
  name: "Skiing",
  image: "https://ski-photo.s3.amazonaws.com/skiChris.png",
  video: "https://skiing-video.s3.amazonaws.com/1+(1).mp4"
)

hobby3 = Hobby.create(
  developer_id: developer.id,
  name: "Diving",
  image: "https://beach-sunset.s3.amazonaws.com/beachSunset.png",
  video: "https://diving-video.s3.amazonaws.com/diving.mp4"
)

hobby4 = Hobby.create(
  developer_id: developer.id,
  name: "Biking",
  image: "https://beach-bike.s3.amazonaws.com/beachBikes.png",
  video: "https://biking-video.s3.amazonaws.com/biking.mp4"
)

job0 = Job.create(
  developer_id: developer.id,
  title: "Full Stack Engineer",
  company: 'LeapEasy',
  industry: 'InsurTech',
  start_date: '07/2021',
  end_date: '08/2022',
  city: 'Jersey City',
  state: 'NJ',
  summary: 'Designed & developed 6 different insurance forms from 
  ideation to production linking the user engagement to Salesforce using custom built REST api. Remote role.'
)

job1 = Job.create(
  developer_id: developer.id,
  title: 'Freelance Software Developer',
  company: 'Self-Employed',
  industry: 'Technology',
  start_date: '04/2021',
  end_date: '08/2021',
  city: 'Destin',
  state: 'FL',
  summary: 'Developed an iOS application for recreational fishermen and 
  boaters on AppleConnect, tested on Test Flight. Built separate application designed to help local charter boat captain book trips.' 
)

job2 = Job.create(
  developer_id: developer.id,
  title: 'Backend Engineer',
  company: 'Promenade.ai',
  industry: 'Social Media',
  start_date: '01/2021',
  end_date: '04/2021',
  city: 'Atlanta',
  state: 'GA',
  summary: 'Designed & developed a backend microservice to help Veterans 
  locate medical services in their area. Also built an admin dashboard for this application. Remote role.'
)

job3 = Job.create(
  developer_id: developer.id,
  title: 'Territory Sales Manager',
  company: 'Chadwell Supply Co',
  city: 'Dallas',
  state: 'TX',
  summary: 'Managed portfolio of 120 Apartment complexes. In person sales 
  role selling maintenance supplies in East Dallas. History of achieving 6-figure sales metrics.',
  industry: 'Property Management',
  start_date: '01/2019',
  end_date: '06/2019'
)

job4 = Job.create(
  developer_id: developer.id,
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
  developer_id: developer.id,
  name: 'ShoreCasts',
  classification: 'Personal Project',
  url: 'https://www.shorecasts.com',
  frameworks: ['Rails', 'GraphQL', 'React'],
  languages: ['ruby', 'javascript', 'psql'],
  hosts: ['AWS Amplify', 'Elastic Beanstalk', 'RDS database'],
  description: 'Designed to centralize the location 
    for all of the necessary forecasting tools that recreational boaters 
    and saltwater anglers utilize to plan their days on the water.',
  github: 'https://www.shorecasts.com',
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
  developer_id: developer.id,
  job_id: job0.id, 
  name: 'Leap Claims Form',
  classification: 'Work Project',
  url: 'https://www.leapeasy.com/claim-form/',
  github: 'https://www.leapeasy.com/claim-form/',
  frameworks: ['Rails', 'GraphQL', 'React'],
  languages: ['ruby', 'javascript', 'psql'],
  hosts: ['AWS Amplify', 'Elastic Beanstalk', 'RDS database'],
  description: 'Claims form designed to help landlords that work 
    with Leap file insurance claims on their policies.',
  apis: ['Salesforce'],
  features: ['Google Places Autocomplete', 'Salesforce Automation', 'Salesforce Record Mutations']
)
project2 = Project.create(
  developer_id: developer.id,
  job_id: job1.id, 
  name: 'Bluesman Charters',
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

project3 = Project.create(
  developer_id: developer.id,
  job_id: job2.id, 
  name: 'Veterans to Doctors',
  classification: 'Work Project',
  url: 'https://promenade.ai',
  github: 'https://promendae.ai',
  hosts: ['Heroku'],
  frameworks: ['Rails', 'GraphQL', 'React'],
  languages: ['ruby', 'javascript', 'psql'],
  apis: ['Constructed Api'],
  features: ['Admin Dashboard', 
  'Custom Location Finder', 
  'Stripe Payment Checkout'],
  description: 'Microservice designed to help veterans locate 
  specific medical services to facilitate their navigation of 
  post-military life.'
)

project4 = Project.create(
  developer_id: developer.id,
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

project5 = Project.create(
  developer_id: developer.id,
  name: 'Gift of Gab',
  classification: 'School Project',
  url: 'https://gift-of-gab-deployed.herokuapp.com/',
  github: 'https://github.com/GiftOfGab1',
  hosts: ['Heroku'],
  frameworks: ['Rails', 'GraphQL', 'Flask', 'React'],
  languages: ['ruby', 'javascript', 'python', 'psql'],
  apis: ['Constructed Api', 'Text To Speech'],
  features: ['Text to Audio', 'Microservice', 'redux'],
  description: 'Progressive web application designed to facilitate speech for individuals with cognitive disabilities.'
)

project6 = Project.create(
  developer_id: developer.id,
  name: 'Local Spotlight',
  classification: 'School Project',
  url: 'https://polar-caverns-76159.herokuapp.com/',
  github: 'https://github.com/cgaddis36/local_spotlight',
  hosts: ['Heroku'],
  frameworks: ['Rails'],
  languages: ['ruby', 'psql'],
  apis: ['Spotify'],
  features: ['Spotify Oauth', 'Geographical Location mapping'],
  description: 'Web application designed to locate local up and coming artists for you based on geographical location.'
)

institution0 = Institution.create(
  developer_id: developer.id,
  name: 'University of Georgia',
  degree: "Bachelor's Degree",
  major: 'Consumer Economics',
  graduation: 'December 2017',
  city: 'Athens',
  state: 'GA',
  logo: 'https://uga-logo.s3.amazonaws.com/ugaLogo.jpeg'
)

institution1 = Institution.create(
  developer_id: developer.id,
  name: 'Turing School of Software & Design',
  degree: 'Technical Certificate',
  city: 'Denver',
  state: 'CO',
  graduation: 'November 2020',
  major: 'Backend Engineering',
  logo: 'https://turing-logo.s3.amazonaws.com/turingLogo.png'
)

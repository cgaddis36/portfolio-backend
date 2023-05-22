# Portfolio Backend 
Live Api Url: https://portfolio.chasegaddis.com </br>
Frontend Url: https://chasegaddis.com
## Dependencies 
- Rails 7.0.4
- ruby 3.0.4
- graphql

## Testing Suite 
- RSpec

## Setup
- clone repo from github
- go to puma.rb and comment out lines 26, 28 & 35
- in your terminal run the next string of commands: 
- `bundle install`
- `rails db:{create,migrate,seed}`
- `rspec`
- `rails s -p 4000`
These steps will setup your rails application with the necessary dependencies, create and migrate your database as well as start your server. The next steps will be to connect your Frontend portfolio site to the backend and replace your seeds with mine.
- go to cors.rb and modify the allowed incoming servers to reflect your ip address
- Replace seeds in seeds.rb with your personal background information to feed to the Frontend portfolio site

### Setup your React Frontend Application
##Follow the steps on the repo linked below.
- https://github.com/cgaddis36/portfolio-site
- After you setup your frontend application and replace the url on the FindDeveloper.js file to reflect the url that your portfolio api is now hosted on. If you followed above steps, you will need to send requests to: `http://localhost:4000/graphql`

## Deployed AWS
- RDS Database
- EC2 instance
- Route 53 Domain Management
- Elastic Beanstalk




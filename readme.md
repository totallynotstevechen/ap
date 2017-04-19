# Dominion Scraper
This scrapes the most recent energy usage from dom.com and outputs it to the terminal

## Requirements
- Ruby 2.3.0+
- Google Chrome 57.0
- chromedriver 2.29
(https://sites.google.com/a/chromium.org/chromedriver/)
- watir gem

## Setup
- Install the dependencies above
- include the ChromeDriver location in your PATH env variable
- set username to ENV['DOM_USER'] and password to ENV['DOM_PASSWORD']
- execute scrape_script.rb with `ruby scrape_script.rb`

## Immediate things I would do given slightly more time
- Allow user to input their own login info from terminal
- Have the dates display in the same format
- Make the app a web page
- Do my research much ahead of time on webscraping(Ran into many blocks)
- Address the 8 Rubocop infractions
- Approach this from an OOP perspective

## If given much more time(Things that aren't completely new to me):
- Research for a more lightweight solution than using chromedrives
- Build an entire Ruby on Rails API 
- Build a ReactJS front end using Redux and asset managment with webpack.
	- Testing done with Mocha, Chai, and Enzyme
- Write unit tests that test:
	- The parent data html tag exists for each specified data to be scraped
	- The target website returns the proper status code
- Integration tests that test the similar flow like this script
	
## Things I wish I was better at
- Web Scraping
- Data visualization 
- Finishing code challenges within the recommended time



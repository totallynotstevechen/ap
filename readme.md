# Dominion Scraper
This scrapes the most recent energy usage from dom.com and outputs it to the terminal

## Requirements
- Ruby 2.3.0+
- Google Chrome 57.0
- chromedriver 2.29
(https://sites.google.com/a/chromium.org/chromedriver/)
- watir gem

## Setup
- include the ChromeDriver location in your PATH env variable
- set username to ENV['DOM_USER'] and password to ENV['DOM_PASSWORD']
- execute scrape_script.rb with `ruby scrape_script.rb`


## Immediate things I would do given more time
- Do my research much ahead of time on webscraping(Ran into many blocks)
- Actually address the 10 or so Rubocop infractions
- Approach this from an OOP perspective

## For a whole app and if given much more time:
- Research a more lightweight solution
- Build an entire Ruby on Rails API with a ReactJS front-end that scrapes most
- Write unit tests that tests(for each energy provider):
	- The parent data html tag exists for each specific data
	- 

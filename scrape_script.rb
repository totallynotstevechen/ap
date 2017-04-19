require 'watir'
require 'nokogiri'
require 'open-uri'

browser = Watir::Browser.new :chrome
browser.goto 'dom.com'
browser.button(:class => 'navbar-toggle').click
browser.element(:class => "location-toggle-title").click
browser.link(:text => "Virginia").when_present.click
browser.window.resize_to(1920, 1080)
browser.text_field(:name => "user").set "klobb65"
browser.text_field(:name => "password").set "UyJ8ugayM03ZeLvuC66l"

browser.element(:id => 'SignIn').click

browser.goto 'https://mya.dom.com/usage/analyzeyourenergyusage'

puts browser.element(class: 'tbl-td-center').text.strip

print doc

# : usage (kWh), bill amount ($), service start date, service end date (also sometimes referred to as the meter read dates), and bill due date

# print browser.body
# browser.text_field(title: 'Search').set 'Hello World!'
# browser.button(type: 'submit').click
#
# puts browser.title
# # => 'Hello World! - Google Search'
# browser.close

# require 'nokogiri'
# require 'mechanize'
#
# agent = Mechanize.new
#
# # Below opens URL requesting username and finds first field and fills in form then submits page.
#
# page = agent.get('http://www.dom.com/')
#
#
# page.links.each do |link|
#   puts link.text
# end
#
# page = agent.page.link_with(:text => 'VA').click
# print "pretty print page:"
# pp page

# session = Capybara::Session.new(:poltergeist)
#
# session.visit('https://www.dom.com')
#
# # dom_homepage = Nokogiri::HTML(open("https://www.dom.com/"))
#
# print session.document

# // click sign in button
# <a href="/sign-in" title="Sign In">Sign In</a>
#
# // click other
# /// if login form is visible just login
# // otherwise...
# // click va
# // this will result in https://www.dom.com/sign-in
# // Fill login and password
# // click submit
# // use nokogiri to get
# // https://mya.dom.com/usage/analyzeyourenergyusage
# // find out which things to scrape
#
# print doc
#
## Requirements:
## Homebrew 1.1.12
## PhantomJS 2.1.1

## Setup:
## brew install phantomjs


#

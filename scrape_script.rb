require 'watir'

browser = Watir::Browser.new :chrome
browser.window.resize_to(1920, 1080)
browser.goto 'dom.com'
browser.element(xpath: '/html/body/div/header/div/div/div[1]/div[1]/a').click
browser.link(xpath: '//*[@id="VA"]').wait_until_present.click
browser.text_field(name: "user").set ENV['DOM_USER']
browser.text_field(name: "password").set ENV['DOM_PASSWORD']

browser.element(id: 'SignIn').click

due_date = browser.element(xpath: '//*[@id="homepageContent"]/div[3]/div[1]/p/span[1]').text.strip

browser.goto 'https://mya.dom.com/usage/analyzeyourenergyusage'

kwh = browser.element(xpath: '//*[@id="paymentsTable"]/tbody/tr[2]/td[3]').text.strip
bill_amount = browser.element(xpath: '//*[@id="billHistoryTable"]/tbody/tr[2]/td[3]').text.strip
month_days = browser.element(xpath: '//*[@id="paymentsTable"]/tbody/tr[2]/td[2]').text.strip
end_date = browser.element(xpath: '//*[@id="paymentsTable"]/tbody/tr[2]/td[1]').text.strip
start_date = Date.parse(end_date) - month_days.to_i


puts "Your Energy usage from #{start_date} to #{end_date}"
puts 'Your kWh usage: ' + kwh
puts 'Your Bill amount for March: ' + bill_amount
puts "Start Date: #{start_date}"
puts 'End Date: ' + end_date
puts "Bill due date: #{due_date}"

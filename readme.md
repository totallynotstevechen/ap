# Arcadia Power Challenge
(Summary here)

## Requirements
- Homebrew
-  

## Summary
This script scrapes Bill Information from a Dominion Power an authenticated user's account, primarily from this page: https://mya.dom.com/usage/analyzeyourenergyusage

## Things I would do given more time
- Figure out why the following error message is returned
```
/usr/local/lib/ruby/gems/2.4.0/gems/poltergeist-1.14.0/lib/capybara/poltergeist/browser.rb:376:in `command': Request to 'https://www.dom.com' failed to reach server, check DNS and/or server status (Capybara::Poltergeist::StatusFailError)
	from /usr/local/lib/ruby/gems/2.4.0/gems/poltergeist-1.14.0/lib/capybara/poltergeist/browser.rb:35:in `visit'
	from /usr/local/lib/ruby/gems/2.4.0/gems/poltergeist-1.14.0/lib/capybara/poltergeist/driver.rb:97:in `visit'
	from /usr/local/lib/ruby/gems/2.4.0/gems/capybara-2.13.0/lib/capybara/session.rb:254:in `visit'
	from scrape_script.rb:11:in `<main>'
```

- Store login credentials in environment variable or obtain user input from terminal
- Write unit tests for the criteria below

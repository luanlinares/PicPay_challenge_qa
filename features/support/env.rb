# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'faker'
require 'site_prism'
require "report_builder"
require_relative 'page_helper.rb'
require_relative 'helper.rb'

World(Pages)
World(Helper)

AMBIENTE = ENV['AMBIENTE']

BROWSER = ENV['BROWSER']

CONFIG = YAML.load_file(File
  .dirname(__FILE__) + "/data/#{AMBIENTE}.yml")

Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
    option = ::Selenium::WebDriver::Chrome::Options.new(
      args: ['--start-fullscreen', '--disable-infobars']
    )
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: option)
  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(
      app, browser: :firefox,
           desired_capabilities: Selenium::WebDriver::Remote::Capabilities
        .firefox(marionette: true)
    )
  end
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = CONFIG['url_home']
end

Capybara.default_max_wait_time = 10

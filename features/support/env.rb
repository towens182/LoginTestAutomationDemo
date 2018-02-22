require 'watir-webdriver'
require 'cucumber'
require 'selenium-webdriver'
require 'yaml'
require_relative "./assertions.rb"
require_relative "../../Pages/loginPage"
require_relative "../../Pages/homePage"

Before do
  browser = Watir::Browser.new :ie
  @loginPage = LoginPage.new(browser)
end



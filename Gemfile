source 'https://rubygems.org'

 git_source(:github) do |repo_name|
   repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
   "https://github.com/#{repo_name}.git"
 end

 # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
 gem 'rails', '~> 5.1.2'

 gem 'pg', '~>0.21.0'

 # #1
 group :production do
 end

 # #2
 group :development do
   gem 'sqlite3'
 end

 # Use Puma as the app server
 gem 'puma', '~> 3.0'
 # Use SCSS for stylesheets
 gem 'sass-rails', '~> 5.0'
 # Use Uglifier as compressor for JavaScript assets
 gem 'uglifier', '>= 1.3.0'

 # Use jquery as the JavaScript library
 gem 'jquery-rails'
 # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
 gem 'turbolinks', '~> 5'
 # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
 gem 'jbuilder', '~> 2.5'

 # Use Bootstrap for styling
 gem 'bootstrap-sass'

# Use Bootstrap_Form for styling forms
 gem "bootstrap_form",
    git: "https://github.com/bootstrap-ruby/bootstrap_form.git",
    branch: "master"

# Use Devise for User sign-up, sign-in
gem 'devise'

# Use Ransack for filtering and pagination
gem 'jquery-datatables-rails'

 gem 'thor', '0.20.0'

 group :development do
   gem 'listen', '~> 3.0.5'
 end

# ----- Add Gem ---------------------------------------------
gem 'redis'
gem 'bcrypt'
gem 'mini_magick'
gem 'bootstrap-sass'
gem 'font-awesome-sass'
gem 'jquery-ui-rails'
gem 'jquery-slimscroll-rails'
gem 'bootstrap-switch-rails'
gem 'jquery-rails'
gem 'jquery-cookie-rails'
gem 'rest-client'
gem 'whenever'
gem 'will_paginate'
gem 'will_paginate-bootstrap'
gem 'kaminari'
gem "ransack"
gem 'carrierwave'
gem "paperclip"
gem 'mini_magick'
gem 'momentjs-rails'
gem 'bootstrap3-datetimepicker-rails'
gem "simple_form"
gem 'jquery-fileupload-rails'
gem 'redis-rails'
gem 'redis-namespace'
gem 'paper_trail'
gem "apipie-rails"
gem 'ckeditor'
gem_group :development, :test do
  gem "rspec-rails"
  gem "pry-rails", "~> 0.3.2"
  gem 'pry-doc', "~> 0.8.0"
  gem 'pry-byebug', "~> 3.4"
  gem "quiet_assets", "~> 1.0.2"
  # gem "better_errors"
  # gem "binding_of_caller"
  gem "rspec-rails", "~> 3.1.0"
  # gem 'guard-rspec', '~> 4.3.1'
  # gem 'spring-commands-rspec', '~> 1.0.2'
  gem 'did_you_mean'
  gem 'faker'
end
# ----- Remove CoffeeScript, Sass and "all that jazz" ---------------------------------------------

comment_lines 'Gemfile', /gem 'coffee/
comment_lines 'Gemfile', /gem 'sass/
comment_lines 'Gemfile', /gem 'uglifier/
uncomment_lines 'Gemfile', /gem 'therubyracer/

application "config.generators do |g|
      g.test_framework  false
      g.assets false
      g.helper false
      g.jbuilder false
      g.factory_gril false
    end"
application "config.time_zone = 'Beijing'"
application "config.i18n.default_locale = :'zh-CN'"

git :init
git add: "."
git commit: "-a -m 'Initial commit'"
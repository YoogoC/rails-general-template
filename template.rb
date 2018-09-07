# ----- Add Gem ---------------------------------------------
# gem 'redis'
# gem 'bcrypt'
gem 'mini_magick'
# gem 'bootstrap-sass'
# gem 'font-awesome-sass'
# gem 'jquery-ui-rails'
# gem 'jquery-slimscroll-rails'
# gem 'bootstrap-switch-rails'
# gem 'jquery-rails'
# gem 'jquery-cookie-rails'
gem 'rest-client'
gem 'whenever'
# gem 'will_paginate'
# gem 'will_paginate-bootstrap'
gem 'kaminari'
# gem "ransack"
# gem 'carrierwave'
# gem "paperclip"
# gem 'momentjs-rails'
# gem 'bootstrap3-datetimepicker-rails'
# gem "simple_form"
# gem 'jquery-fileupload-rails'
# gem 'redis-rails'
# gem 'redis-namespace'
gem 'paper_trail'
# gem "apipie-rails"
# gem 'ckeditor'
gem_group :development, :test do
  # gem "rspec-rails"
  gem "pry-rails"
  gem 'pry-doc'
  gem 'pry-byebug'
  # gem "quiet_assets"
  gem "better_errors"
  # gem "binding_of_caller"
  # gem 'guard-rspec'
  # gem 'spring-commands-rspec'
  gem 'did_you_mean'
  gem 'faker'
end
# ----- Remove CoffeeScript, Sass and "all that jazz" ---------------------------------------------

# comment_lines 'Gemfile', /gem 'coffee/
# comment_lines 'Gemfile', /gem 'sass/
# comment_lines 'Gemfile', /gem 'uglifier/
# uncomment_lines 'Gemfile', /gem 'therubyracer/

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
# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))
require 'devise_security_extension/version'

Gem::Specification.new do |s|
  s.name = "devise_security_extension"
  s.version = "0.7.2.af"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marco Scholl", "Alexander Dreher"]
  s.date = "2013-02-11"
  s.description = "An enterprise security extension for devise, trying to meet industrial standard security demands for web applications."
  s.email = "team@phatworx.de"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "app/controllers/devise/password_expired_controller.rb",
    "app/views/devise/password_expired/show.html.erb",
    "config/locales/de.yml",
    "config/locales/en.yml",
    "devise_security_extension.gemspec",
    "lib/devise_security_extension.rb",
    "lib/devise_security_extension/controllers/helpers.rb",
    "lib/devise_security_extension/hooks/expirable.rb",
    "lib/devise_security_extension/hooks/password_expirable.rb",
    "lib/devise_security_extension/hooks/session_limitable.rb",
    "lib/devise_security_extension/models/expirable.rb",
    "lib/devise_security_extension/models/old_password.rb",
    "lib/devise_security_extension/models/password_archivable.rb",
    "lib/devise_security_extension/models/password_expirable.rb",
    "lib/devise_security_extension/models/secure_validatable.rb",
    "lib/devise_security_extension/models/security_question.rb",
    "lib/devise_security_extension/models/security_questionable.rb",
    "lib/devise_security_extension/models/session_limitable.rb",
    "lib/devise_security_extension/orm/active_record.rb",
    "lib/devise_security_extension/patches.rb",
    "lib/devise_security_extension/patches/confirmations_controller_captcha.rb",
    "lib/devise_security_extension/patches/confirmations_controller_security_question.rb",
    "lib/devise_security_extension/patches/passwords_controller_captcha.rb",
    "lib/devise_security_extension/patches/passwords_controller_security_question.rb",
    "lib/devise_security_extension/patches/registrations_controller_captcha.rb",
    "lib/devise_security_extension/patches/sessions_controller_captcha.rb",
    "lib/devise_security_extension/patches/unlocks_controller_captcha.rb",
    "lib/devise_security_extension/patches/unlocks_controller_security_question.rb",
    "lib/devise_security_extension/rails.rb",
    "lib/devise_security_extension/routes.rb",
    "lib/devise_security_extension/schema.rb",
    "lib/generators/devise_security_extension/install_generator.rb",
    "test/helper.rb",
    "test/test_devise_security_extension.rb"
  ]
  s.homepage = "http://github.com/phatworx/devise_security_extension"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Security extension for devise"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 2.1.0'

  s.add_runtime_dependency 'railties', '>= 3.2.6', '< 6.0'
  s.add_runtime_dependency 'devise', '>= 3.0.0', '< 5.0'
  s.add_development_dependency 'bundler', '>= 1.3.0', '< 2.0'
  s.add_development_dependency 'sqlite3', '~> 1.3.10'
  s.add_development_dependency 'rubocop', '~> 0'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'easy_captcha', '~> 0'
  s.add_development_dependency 'rails_email_validator', '~> 0'
  s.add_development_dependency 'coveralls'
end

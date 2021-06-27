# -*- encoding: utf-8 -*-
# stub: vonage_rails 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "vonage_rails".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/Nexmo/nexmo-rails/issues", "changelog_uri" => "https://github.com/Nexmo/nexmo-rails/blog/master/CHANGES.md", "homepage" => "https://github.com/Nexmo/nexmo-rails", "source_code_uri" => "https://github.com/Nexmo/nexmo-rails" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Vonage".freeze]
  s.date = "2020-09-15"
  s.description = "Rails Initializer for Vonage's Ruby Server SDK".freeze
  s.email = ["devrel@vonage.com".freeze]
  s.homepage = "https://github.com/Nexmo/nexmo-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.3".freeze
  s.summary = "This is a Rails initializer for Vonage's Ruby Gem. To use it you'll need a Vonage account. Sign up for free at https://www.vonage.com".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<jwt>.freeze, ["~> 2"])
    s.add_runtime_dependency(%q<vonage>.freeze, ["~> 7.2.0"])
    s.add_runtime_dependency(%q<dotenv-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<generator_spec>.freeze, [">= 0"])
    s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.16"])
    s.add_development_dependency(%q<coveralls>.freeze, ["~> 0.8.15"])
  else
    s.add_dependency(%q<jwt>.freeze, ["~> 2"])
    s.add_dependency(%q<vonage>.freeze, ["~> 7.2.0"])
    s.add_dependency(%q<dotenv-rails>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 0"])
    s.add_dependency(%q<generator_spec>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.16"])
    s.add_dependency(%q<coveralls>.freeze, ["~> 0.8.15"])
  end
end

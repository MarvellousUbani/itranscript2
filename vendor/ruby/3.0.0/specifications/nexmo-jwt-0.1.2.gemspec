# -*- encoding: utf-8 -*-
# stub: nexmo-jwt 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "nexmo-jwt".freeze
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/Nexmo/nexmo-jwt-ruby/issues", "changelog_uri" => "https://github.com/Nexmo/nexmo-jwt-ruby/blob/master/CHANGES.md", "documentation_uri" => "https://rubydoc.info/github/Nexmo/nexmo-jwt-ruby", "homepage" => "https://github.com/Nexmo/nexmo-jwt-ruby", "source_code_uri" => "https://github.com/Nexmo/nexmo-jwt-ruby" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nexmo".freeze]
  s.date = "2020-10-13"
  s.description = "Nexmo JWT Generator for Ruby".freeze
  s.email = ["devrel@nexmo.com".freeze]
  s.homepage = "https://github.com/Nexmo/nexmo-jwt-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0".freeze)
  s.rubygems_version = "3.2.3".freeze
  s.summary = "This is the Ruby client library to generate Nexmo JSON Web Tokens (JWTs).".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<jwt>.freeze, ["~> 2"])
  else
    s.add_dependency(%q<jwt>.freeze, ["~> 2"])
  end
end

# -*- encoding: utf-8 -*-
# stub: vonage 7.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "vonage".freeze
  s.version = "7.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/Vonage/vonage-ruby-sdk/issues", "changelog_uri" => "https://github.com/Vonage/vonage-ruby-sdk/blob/master/CHANGES.md", "documentation_uri" => "https://www.rubydoc.info/github/vonage/vonage-ruby-sdk", "homepage" => "https://github.com/Vonage/vonage-ruby-sdk", "source_code_uri" => "https://github.com/Vonage/vonage-ruby-sdk" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Vonage".freeze]
  s.date = "2020-10-14"
  s.description = "Vonage Server SDK for Ruby".freeze
  s.email = ["devrel@vonage.com".freeze]
  s.homepage = "https://github.com/Vonage/vonage-ruby-sdk".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0".freeze)
  s.rubygems_version = "3.2.3".freeze
  s.summary = "This is the Ruby Server SDK for Vonage APIs. To use it you'll need a Vonage account. Sign up for free at https://www.vonage.com".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<nexmo-jwt>.freeze, ["~> 0.1.2"])
    s.add_runtime_dependency(%q<zeitwerk>.freeze, ["~> 2", ">= 2.2"])
    s.add_runtime_dependency(%q<sorbet-runtime>.freeze, ["~> 0.5"])
  else
    s.add_dependency(%q<nexmo-jwt>.freeze, ["~> 0.1.2"])
    s.add_dependency(%q<zeitwerk>.freeze, ["~> 2", ">= 2.2"])
    s.add_dependency(%q<sorbet-runtime>.freeze, ["~> 0.5"])
  end
end

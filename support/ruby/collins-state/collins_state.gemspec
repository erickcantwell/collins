# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "collins_state"
  s.version = File.read 'VERSION'

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Blake Matheny"]
  s.date = "2012-11-19"
  s.description = "Provides basic framework for managing stateful processes with collins"
  s.email = "bmatheny@tumblr.com"
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "README.md",
    "Rakefile",
    "VERSION",
    "collins_state.gemspec",
    "lib/collins/persistent_state.rb",
    "lib/collins/state/mixin.rb",
    "lib/collins/state/mixin_class_methods.rb",
    "lib/collins/state/specification.rb",
    "lib/collins/workflows/provisioning_workflow.rb",
    "lib/collins_state.rb"
  ]
  s.homepage = "https://github.com/tumblr/collins/tree/master/support/ruby/collins-state"
  s.licenses = ["APL 2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Collins based state management"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<collins_client>, ["~> 0.2.9"])
      s.add_runtime_dependency(%q<escape>, ["~> 0.0.4"])
    else
      s.add_dependency(%q<collins_client>, ["~> 0.2.9"])
      s.add_dependency(%q<escape>, ["~> 0.0.4"])
    end
  else
    s.add_dependency(%q<collins_client>, ["~> 0.2.9"])
    s.add_dependency(%q<escape>, ["~> 0.0.4"])
  end
end


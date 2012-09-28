# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "request_crypt"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Darius Peza"]
  s.date = "2012-09-28"
  s.description = "Crypt and decrypt request"
  s.email = "darius@onrails.lt"
  s.extra_rdoc_files = ["README.rdoc", "lib/request_crypt"]
  s.files = ["README.rdoc", "Rakefile", "lib/request_crypt", "Manifest", "request_crypt.gemspec"]
  s.homepage = "http://github.com/dariusp/request_crypt"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Request_crypt", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "request_crypt"
  s.rubygems_version = "1.8.24"
  s.summary = "Crypt and decrypt request"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

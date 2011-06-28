# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{github}
  s.version = "0.1.1"

  s.required_rubygems_version = nil if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Chris Wanstrath}]
  s.cert_chain = nil
  s.date = %q{2008-03-26}
  s.description = %q{The official `github` command line helper for simplifying your GitHub experience.}
  s.email = %q{chris@ozmm.org}
  s.executables = [%q{github}]
  s.files = [%q{bin/github}]
  s.homepage = %q{http://github.com/}
  s.require_paths = [%q{lib}]
  s.required_ruby_version = Gem::Requirement.new("> 0.0.0")
  s.rubyforge_project = %q{github}
  s.rubygems_version = %q{1.8.5}
  s.summary = %q{The official `github` command line helper for simplifying your GitHub experience.}

  if s.respond_to? :specification_version then
    s.specification_version = 1

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

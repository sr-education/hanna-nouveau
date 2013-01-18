# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name = %q{hanna-bootstrap}
  s.version = "0.0.1"

  s.authors = ["Atsushi Nagase", "Erik Hollensbe", "James Tucker", "Mislav Marohnic"]
  s.date = Time.now.strftime("%Y-%m-%d")
  s.description = %q{}
  s.email = %q{a@ngs.io}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files        = `git ls-files`.split("\n").reject{|f| f =~ /^(\..+|Gemfile.*|Guardfile|)$/}
  s.homepage = %q{http://github.com/ngs/hanna-bootstrap}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.summary = %q{Twitter Boostrap theme for RDoc}

  s.add_development_dependency 'rake'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'haml'
  s.add_development_dependency 'sass'
end


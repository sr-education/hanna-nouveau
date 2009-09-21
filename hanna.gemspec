# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{hanna}
  s.version = "0.1.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mislav Marohni\304\207"]
  s.date = %q{2009-09-21}
  s.default_executable = %q{hanna}
  s.description = %q{Hanna is an RDoc implemented in Haml, making its source clean and maintainable. It's built with simplicity, beauty and ease of browsing in mind.}
  s.email = %q{mislav.marohnic@gmail.com}
  s.executables = ["hanna"]
  s.files = ["Rakefile", "bin/hanna", "lib/hanna/hanna.rb", "lib/hanna/rdoctask.rb", "lib/hanna/template_files/class_index.haml", "lib/hanna/template_files/file_index.haml", "lib/hanna/template_files/index.haml", "lib/hanna/template_files/layout.haml", "lib/hanna/template_files/method_index.haml", "lib/hanna/template_files/method_list.haml", "lib/hanna/template_files/method_search.js", "lib/hanna/template_files/page.haml", "lib/hanna/template_files/prototype-1.6.0.3.js", "lib/hanna/template_files/sections.haml", "lib/hanna/template_files/styles.sass", "lib/hanna/template_helpers.rb", "lib/hanna/template_page_patch.rb", "lib/hanna/version.rb", "lib/hanna.rb", "lib/rubygems_plugin.rb", "README.markdown"]
  s.homepage = %q{http://github.com/mislav/hanna}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{An RDoc template that scales}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rdoc>, ["~> 2.3.0"])
      s.add_runtime_dependency(%q<haml>, ["~> 2.0.4"])
      s.add_runtime_dependency(%q<rake>, ["~> 0.8.2"])
    else
      s.add_dependency(%q<rdoc>, ["~> 2.3.0"])
      s.add_dependency(%q<haml>, ["~> 2.0.4"])
      s.add_dependency(%q<rake>, ["~> 0.8.2"])
    end
  else
    s.add_dependency(%q<rdoc>, ["~> 2.3.0"])
    s.add_dependency(%q<haml>, ["~> 2.0.4"])
    s.add_dependency(%q<rake>, ["~> 0.8.2"])
  end
end

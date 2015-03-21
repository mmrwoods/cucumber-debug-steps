Gem::Specification.new do |s|
  s.name = "cucumber-debug-steps"
  s.summary = "Debug steps and helpers for cucumber"
  s.author = "Andrew Premdas and Mark Woods"
  s.version = "0.0.1"
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {spec}/*`.split("\n")
  s.homepage = "http://github.com/thickpaddy/cucumber-debug-steps"
  s.license  = "MIT"

  s.add_dependency('cucumber')
  s.add_dependency('capybara')
  s.add_dependency('coderay')
  s.add_dependency('htmlbeautifier')
end

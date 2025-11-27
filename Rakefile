require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'src/**/*_spec.rb'
  t.rspec_opts = '--color --format documentation'
end

task default: :spec


# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = 'retryit'
  s.version     = '0.1.2'
  s.summary     = "retry any command line"
  s.description = "General purpose retry cli program for anything"
  s.authors     = ["Neville Kadwa"]
  s.email       = ["neville@kadwa.com"]
  s.files       = Dir['lib/**/*.rb'] + Dir['bin/*'] + Dir['[A-Z]*']
  s.test_files  = Dir['test/**/*']
  s.executables = Dir['bin/**/*'].map{|f| File.basename(f)}
  s.homepage    = 'http://github.com/kadwanev/retry'
  s.licenses    = ['Apache-2.0']
end

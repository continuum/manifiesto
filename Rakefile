require 'middleman-gh-pages'

desc 'publish the manifesto on the web'
task :deploy => [:build, :copy_public, :publish]

task :copy_public do
  sh "cp -a public/* build/"
end

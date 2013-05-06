require 'middleman-gh-pages'

desc 'publish the manifesto on the web'
task :deploy => [:not_dirty, :prepare_git_remote_in_build_dir, :sync, :build] do
  message = nil

  cd PROJECT_ROOT do
    sh "cp -a public/* build/"
    head = `git log --pretty="%h" -n1`.strip
    message = "Site updated to #{head}"
  end

  cd BUILD_DIR do
    sh 'git add --all'
    if /nothing to commit/ =~ `git status`
      puts "No changes to commit."
    else
      sh "git commit -m \"#{message}\""
    end
    sh "git push origin gh-pages"
  end
end

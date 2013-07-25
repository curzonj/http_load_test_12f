require 'bundler'

Bundler.setup

task :default do
  rm_rf 'tmp/build'
  mkdir_p 'tmp/build'
  sh "git archive HEAD | tar -C tmp/build -xf -"

  mkdir_p 'tmp/build/vendor'

  Bundler.with_clean_env do
    sh "(cd tmp/build && bundle --deployment --without development test)"
  end
end

role :app, %w[deploy@139.162.126.84]
role :web, %w[deploy@139.162.126.84]

ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

set :rails_env, 'production'
set :keep_releases, 5

set :ssh_options, { user: 'deploy', forward_agent: true }

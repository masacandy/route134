# confij valid only for current version of Capistrano
lock "3.8.2"

set :application, "route134"
set :repo_url, "git@github.com:masacandy/route134.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/applications/route134"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
set :rbenv_type, :user
set :rbenv_ruby, File.read('.ruby-version').strip
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
#
# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

set :unicorn_config_path, -> { File.join(current_path, "config", "unicorn.rb") }

# Confirmation of deploy branch and stage
set :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }
set :confirm_prompt, true
if fetch(:confirm_prompt)
  ask :sure, proc { "Are you sure to deploy the BRANCH: '#{fetch(:branch)}' to STAGE: '#{ARGV[0]}' ? [y|n]" }
  exit if fetch(:sure).to_s !~ /^(y|yes|Y|YES)$/
  ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }
end

after 'deploy:publishing', 'deploy:restart'

namespace :deploy do
  task :restart do
    on roles(:app) do
      invoke 'unicorn:restart'
    end
  end
end

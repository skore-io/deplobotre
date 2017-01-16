require_relative '../../thin_release.rb'

namespace :trello do
  desc 'Creates Trello Card with release info'
  task :create_release do
    next unless fetch(:stage).eql? :production
    servers = []
    on roles(:all) do |server|
      servers << server.hostname
    end
    run_locally do
      ThinRelease.generate_release(
        repo_revision: fetch(:repo_revision),
        revission: `git rev-parse origin/#{fetch(:branch)}`.strip!,
        application: fetch(:application),
        servers: servers
      )
    end
  end

  task :add_default_hooks do
    after 'deploy:finished', 'trello:create_release'
  end
end

namespace :deploy do
  before :starting, :check_trello_hooks do
    invoke 'trello:add_default_hooks'
  end
end

require 'thin_release'
require 'rails'

module ThinRelease
  class Railtie < Rails::Railtie
    rake_tasks do
      load File.expand_path('../../tasks/trello.rake', __FILE__)
    end
  end
end

require 'oozou/cli/plugin'

module Oozou
  module CLI
    module Plugins
      class Heroku < Plugin
        VERSION    = "0.0.1"
        BROWSE_URL = "https://dashboard.heroku.com/apps/%{name}"

        desc "browse", "browse Heroku Dashboard"
        def browse
          Oozou::CLI.browse BROWSE_URL % { name: Oozou::CLI.config('heroku') }
        end
      end
    end

    class Runner < Thor
      register(
        Oozou::CLI::Plugins::Heroku,
        'heroku',
        'heroku <command>',
        'Heroku'
      )
    end
  end
end

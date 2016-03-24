require 'oozou/cli/plugin'

module Oozou
  module CLI
    module Plugins
      class Circleci < Plugin
        VERSION    = "0.0.1"
        BROWSE_URL = "https://circleci.com/gh/%{name}"

        desc "browse", "browse CircleCI Dashboard"
        def browse
          Oozou::CLI.browse BROWSE_URL % { name: Oozou::CLI.config('circleci') }
        end
      end
    end

    class Runner < Thor
      register(
        Oozou::CLI::Plugins::Circleci,
        'circleci',
        'circleci <command>',
        'CircleCI related commands'
      )
    end
  end
end

require 'oozou/cli/plugin'

module Oozou
  module CLI
    module Plugins
      class Github < Plugin
        VERSION    = "0.0.1"
        BROWSE_URL = "https://github.com/%{name}"

        desc "browse", "browse Github Project"
        def browse
          Oozou::CLI.browse BROWSE_URL % { name: Oozou::CLI.config('github') }
        end
      end
    end

    class Runner < Thor
      register(
        Oozou::CLI::Plugins::Github,
        'github',
        'github <command>',
        'Github'
      )
    end

  end
end

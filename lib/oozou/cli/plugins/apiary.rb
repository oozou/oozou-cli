require 'oozou/cli/plugin'

module Oozou
  module CLI
    module Plugins
      class Apiary < Plugin
        VERSION    = "0.0.1"
        BROWSE_URL = "https://app.apiary.io/%{name}/editor"

        desc "browse", "browse Apiary Editor"
        def browse
          Oozou::CLI.browse BROWSE_URL % { name: Oozou::CLI.config('apiary') }
        end
      end
    end

    class Runner < Thor
      register(
        Oozou::CLI::Plugins::Apiary,
        'apiary',
        'apiary <command>',
        'Apiary'
      )
    end
  end
end

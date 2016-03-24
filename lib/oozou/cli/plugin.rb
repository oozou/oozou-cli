module Oozou
  module CLI
    class Plugin < Thor
      desc "version", "display plugin version"
      def version
        puts VERSION
      end
    end
  end
end

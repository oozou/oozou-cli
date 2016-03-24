require 'thor'
require 'parseconfig'

require 'oozou/cli/plugins/apiary'
require 'oozou/cli/plugins/circleci'
require 'oozou/cli/plugins/github'
require 'oozou/cli/plugins/heroku'

module Oozou
  module CLI
    class Runner < Thor
      desc "init", "Initialize a .oozou file"
      def init
        dotoozou = File.join(Dir.pwd, '.oozou')
        fail "#{dotoozou} already exists" if File.exist?(dotoozou)
        File.open(dotoozou, 'w') do |file|
          file.write <<-PLAIN
#apiary = app_name
#circleci = app_name
#github = oozou/app_name
#heroku = app_name
          PLAIN
        end
        puts ".oozou created successfully"
      end
    end

    def self.config(key)
      dotoozou = File.join(Dir.pwd, '.oozou')
      fail "#{dotoozou} is missing" unless File.exist?(dotoozou)
      parsed_config = ParseConfig.new(dotoozou)
      parsed_config[key] || fail("'#{key}' is not defined in .oozou")
    end

    def self.browse(url)
      `open #{url}`
    end
  end
end

require 'claide'

module eat

  class Command < CLAide::Command

    require 'eat/command/help'

    self.abstract_command = true
    self.command = 'eat'
    self.description = 'This nifty tool will help you to forget bad days searching for a cantine.'

    def self.options
      [
        ['--version',  'Show the version of Eat'],
      ].concat(super)
    end

    def self.parse(argv)
      command = super
      # unless SourcesManager.master_repo_functional? || command.is_a?(Setup) || command.is_a?(Repo::Add) || ENV['SKIP_SETUP']
#         Setup.new(CLAide::ARGV.new([])).run
#       end
      command
    end

    def self.run(argv)
      argv = CLAide::ARGV.new(argv)
      if argv.flag?('version')
        puts VERSION
        exit!(0)
      end
      super(argv)
      UI.print_warnings
    end

    def initialize(argv)
      super
    end

  end
end
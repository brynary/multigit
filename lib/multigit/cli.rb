require "multigit/commands"

module Multigit
  class CLI
    
    def self.execute(*args)
      new(*args).execute
    end
    
    def initialize(args, out_stream = STDOUT, err_stream = STDERR)
      @args = args
      @out_stream = out_stream
      @err_stream = err_stream
    end
    
    def execute
      klass = command_class(@args)
      klass.new(@args_for_command, @out_stream, @err_stream).execute || 0
    end
    
    def command_class(args)
      if args.first == "help"
        @args_for_command = @args[1..-1]
        Commands::Help
      elsif args.first == "version"
        @args_for_command = @args[1..-1]
        Commands::Version
      else
        @args_for_command = @args.dup
        Commands::Run
      end
    end
    
  end
end
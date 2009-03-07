require "multigit/commands/command"

module Multigit
  module Commands
    
    class Help < Command
      
      def execute
        @out_stream.puts "multigit help:"
      end
      
    end
    
  end
end
require "multigit/commands/command"

module Multigit
  module Commands
    
    class Version < Command
      
      def execute
        @out_stream.puts VERSION
      end
      
    end
    
  end
end
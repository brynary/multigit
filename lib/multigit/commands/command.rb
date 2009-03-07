module Multigit
  module Commands
    
    class Command
      
      def initialize(args, out_stream, err_stream)
        @args = args
        @out_stream = out_stream
        @err_stream = err_stream
      end
      
    end
    
  end
end

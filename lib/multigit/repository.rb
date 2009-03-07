module Multigit
  
  class Repository
    attr_reader :name
    attr_reader :refs
    
    attr_accessor :directory
    attr_accessor :origin
    
    def initialize(name, &block)
      @refs = []
      @name = name
      yield self if block_given?
    end
    
    def build(ref)
      @refs << ref
    end
    
  end
  
end
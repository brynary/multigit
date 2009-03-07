require "multigit/repository"

module Multigit
  
  class Config
    attr_reader :repositories
    
    def initialize(&block)
      @repositories = []
      yield self if block_given?
    end
    
    def repository(name, &block)
      @repositories << Repository.new(name, &block)
    end
    
  end
  
end
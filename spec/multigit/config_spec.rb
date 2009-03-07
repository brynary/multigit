require File.dirname(__FILE__) + '/../spec_helper'

module Multigit
  describe Config do
    it "doesn't require a block to be initialized" do
      Config.new
    end
    
    it "returns an array of repositories" do
      Config.new.repositories.should == []
    end
    
    context "with a repository" do
      before :each do
        @config = Config.new do |config|
          config.repository :rspec do |repo|
            repo.directory = "vendor/rspec"
            repo.origin = "git://github.com/"
            
            repo.build "1.1.1"
          end
        end
        
        @repository = @config.repositories.first
      end
      
      it "stores the repository" do
        @config.repositories.size.should == 1
      end

      it "stores the repository name" do
        @repository.name.should == :rspec
      end
      
      it "stores the repository directory" do
        @repository.directory.should == "vendor/rspec"
      end
      
      it "stores the repository origin" do
        @repository.origin.should == "git://github.com/"
      end
      
      it "stores the refs to build" do
        @repository.refs.size.should == 1
      end
    end
  end
end
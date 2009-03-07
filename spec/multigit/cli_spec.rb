require File.dirname(__FILE__) + '/../spec_helper'

module Multigit
  describe CLI do
    def run(args)
      @out = StringIO.new
      @err = StringIO.new
      @exit_code = CLI.execute(args.split(" "), @out, @err)
    end
    
    describe "help" do
      before do
        run "help"
      end
      
      it "prints help" do
        @out.string.should == "multigit help:\n"
      end
      
      it "exists successfully" do
        @exit_code.should == 0
      end
    end
    
    describe "version" do
      before do
        run "version"
      end
      
      it "prints the multigit version" do
        @out.string.should == "0.1.0\n"
      end
      
      it "exists successfully" do
        @exit_code.should == 0
      end
    end
    
    describe "clone" do
    end
    
    describe "update" do
    end
    
    describe "status" do
    end

    describe "run" do
    end
  end
end
require "spec_helper"
require_relative "../sinatratodo.rb"

describe "Sinatra TO-DO" do

	before :each do
		@task = Task.new ("Clean bathroom")
	end

	it "creates a returns false as the status of a new task" do
		expect(@task.status?).to eq(false) 
	end



		
end
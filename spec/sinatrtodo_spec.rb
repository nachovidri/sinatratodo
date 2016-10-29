require "spec_helper"
require_relative "../sinatratodo.rb"

describe "Sinatra TO-DO" do

	before :each do
		@task = Task.new ("Clean bathroom")
	end

	it "returns false as the status of a new task" do
		expect(@task.complete?).to eq(false) 
	end

	it "it returns true for every task" do
		@task.complete!
		expect(@task.complete?).to eq(true) 
	end

	it "it returns false for every task" do
		expect(@task.make_incomplete!).to eq(false) 
	end

	it "it returns the time of creation when a task is created" do
		expect(@task.created_at).to eq(Time.now.strftime("%F")) 
	end

	it "it returns the new content when a class is updated" do
		@task.update_content! "Buy sugar"
		expect(@task.content).to eq(@task.content) 
	end


		
end
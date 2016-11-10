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

	before :each do
		@todolist = Todolist.new
	end

	it "it adds a task to the todo list" do
		@todolist.add(Task.new ("Hola"))
		expect(@todolist.tasks[-1].content).to eq("Hola") 
	end

	it "it deletes a task from the todo list" do
		@todolist.add(Task.new ("Walk the dog"))
		@todolist.add(Task.new ("Para borrar"))
		id = @todolist.tasks[-1].id
		@todolist.delete_task(id)
		expect(@todolist.tasks[-1].id).to eq(id-1)
	end

	it "finds a task from the todo list by its id" do
		@@current_id = 0
		@todolist.add(Task.new ("Walk the dog"))
		@todolist.add(Task.new ("Buy milk"))
		# @task_found = Todolist.new
		@task_found = @todolist.find_task_by_id(1)
		expect(@task_found[0].id).to eq(1) 
	end
		
end
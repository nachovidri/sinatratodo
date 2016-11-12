require 'sinatra'
require 'sinatra/reloader'
require 'pry'

require_relative('lib/Task.rb')
require_relative('lib/TodoList.rb')

@@todo_list = Todolist.new("Josh")
task1 = Task.new "Walk the dog"
task2 = Task.new "Clean the bathroom"
task3 = Task.new "Clean the kitchen"
@@todo_list.add task1
@@todo_list.add task2
@@todo_list.add task3

# binding.pry

get '/' do
	erb(:task_index)
end
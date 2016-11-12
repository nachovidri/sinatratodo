class Todolist

	attr_reader :tasks

	def initialize user
		@tasks = []
		@user = user
	end

	def add task
		@tasks.push(task)
	end

	def delete_task id
		@tasks.delete_if{|task| task.id == id}
	end

	def find_task_by_id id
		@tasks.select{|task| task.id == id}
	end

	def sort_by_created
		@tasks.sort {|task1, task2| task1.created_at <=> task2.created_at}
	end

	def save
		@todo_store.transaction do
			@todo_store[@user] = @tasks
		end
	end

	def load_tasks

	end
end
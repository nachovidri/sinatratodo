class Task
	attr_reader :content, :id, :created_at
	@@current_id = 1

	def initialize content
		@content = content
		@id = @@current_id
		@@current_id = @@current_id + 1
		@completed = false
		@created_at = Time.now.strftime("%F")
	end

	def complete?
		@completed
	end

	def complete!
		@completed = true
	end

	def make_incomplete!
		@completed = false
	end

	def update_content! content
		@content = content
	end
end

class Todolist

	attr_reader :tasks

	def initialize
		@tasks = []
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

end
class Task
	attr_accessor :created_at
	attr_reader :content, :id
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
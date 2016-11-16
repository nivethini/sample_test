class ExampleJob < ApplicationJob
  	queue_as :default
    

	def perform_async(user_id)
 		user = User.find(user_id)

  	end
end
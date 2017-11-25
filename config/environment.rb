# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

class TrueClass
    def to_yesno
      'Yes'
     end
 end
 
 class FalseClass
    def to_yesno
      'No'
     end
 end
module EventsHelper
	def status(accepted)
		case accepted # a_variable is the variable we want to compare
		when true    #compare to 1
  			"Confirmed" 
		when false    #compare to 2
  			"Declined"
		else
  			"In process"
		end
	end
end

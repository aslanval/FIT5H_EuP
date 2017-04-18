module WorksHelper
	def time_view(diff)
		if diff != nil
			if diff < 60
				"#{diff.round} sec"
			elsif diff > 3600
				"#{(diff/3600).round(2)} h"
			elsif diff >= 60
				"#{(diff/60).round(2)} min"
			end
		else
			diff
		end
	end

	def calculate(month)
		total = 0
		for work in @works_month[month]
			if work.diff != nil
				total = total + work.diff
			end
		end
		total
	end
end
 
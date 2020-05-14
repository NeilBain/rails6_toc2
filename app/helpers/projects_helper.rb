module ProjectsHelper
	def ngb_format(num)
		number_with_precision(num, precision: 3, significant: true, strip_insignificant_zeros: true)
	end
end

def after_midnight(num)
	t = Time.new(2016,4,10)
	t += num*60
	t.strftime("%A %H:%M")
end
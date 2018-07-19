class Test 
	
	def self.bar
		puts "bar"
	end

	def self.foo
		puts "foo"
	end
	
	private_class_method :foo, :bar

end

Test.bar
Test.foo

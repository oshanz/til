http://www.integralist.co.uk/posts/eigenclass.html

https://gist.github.com/Integralist/bb8760d11a03c88da151
1.When creating singleton methods (i.e. def self.foo) Ruby will create an anonymous class to hold these methods. The anonymous class then assumes the role of the object's class and the original class is re-designated as the superclass of that anonymous class(Eigenclass).

2. private is actually a method
3. private method only changes the visibility of instance methods
4. Class methods on the other hand are instance methods of the Eigenclass

```ruby
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
```

<div id="disqus_thread"></div>
<script>
var disqus_config = function () {
    this.page.url = 'http://oshanz.github.io/til/2016/04/08/eigenclass.html';
    this.page.identifier = '2016-04-08-eigenclass';
};

(function() {
var d = document, s = d.createElement('script');
s.src = 'https://oshanz.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();

</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>

<script id="dsq-count-scr" src="//oshanz.disqus.com/count.js" async></script>

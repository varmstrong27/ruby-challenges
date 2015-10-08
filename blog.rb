class Blog

	@@total_blog_posts = 0
	@@blog_array = Array.new

	def initialize
		@@total_blog_posts += 1
	end	

	def self.current_count
		puts "There are currently #{@@total_blog_posts} total blog posts."
	end

	def self.push(data)
		@@blog_array.push(data)
	end

	def self.publish
		@@blog_array.each do |post|
			puts "Title: #{post.get_title}"
			puts "Content: #{post.get_content}"
			puts "Publish Date: #{post.get_publish_date}"
		end
	end

end

class Blog_Post < Blog

	def set_title=(title)
		@title = title
	end

	def get_title
		return @title
	end

	def set_content=(content)
		@content = content
	end

	def get_content
		return @content
	end

	def set_publish_date=(publish_date)
		@publish_date = publish_date
	end

	def get_publish_date
		return @publish_date
	end

	def set_author=(author)
		@author = author
	end

	def get_author
		return @author
	end

	def create
		Blog_Post.push(self)
	end

	puts "Do you want to create a blog post? Y/N"
	answer = gets.chomp
	while(answer == "y".downcase)
		post = Blog_Post.new
		puts "Enter the title: "
		post.set_title = gets
		puts "Enter content: "
		post.set_content = gets
		puts "Enter the publish date: "
		post.set_publish_date = gets
		puts "Enter the author: "
		post.set_author = gets
		post.create
		puts "Do you want to create a blog post? Y/N"
		answer = gets.chomp
	end

end

puts Blog_Post.inspect
Blog_Post.publish

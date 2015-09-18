class Painting < ActiveRecord::Base
	belongs_to :museum
	belongs_to :artist

# we need class method since Search applies to all paintings; 
# self. ==> class method, without self. ==> instance method
	def self.search(query)
		where('title LIKE :query', :query => "%#{query}%")
	end
end

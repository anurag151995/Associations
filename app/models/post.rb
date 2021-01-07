class Post < ApplicationRecord
	has_many :likes, as: :likeable
	#has_many :comments
end

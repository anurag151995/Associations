class Comment1 < ApplicationRecord
	has_many :likes, as: :likeable
end

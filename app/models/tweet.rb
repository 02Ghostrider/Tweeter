class Tweet < ApplicationRecord
	belongs_to :user

	has_many :tweet_tags
	has_many :tags, through: :tweet_tags

	validates :message, presence: true
  validates :message, length: {maximum: 140, too_long: "Have you ever seen a windbag? Take a look in the mirror! You are way too verbose!"}

end


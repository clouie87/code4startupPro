class Project < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: [:slugged, :finders]

	has_many :tasks

	has_many :subscriptions
	has_many :users, through: :subscriptions

	has_many :reviews

	validates :name, presence: true, length: { maximum: 50 }
	validates :content, presence: true, length: { maximum: 500 }
	validates :price, presence: true, numericality: { only_integer: true }

	has_attached_file :image, :styles => { :medium => "680x300>", :thumb => "170x75>" }
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  	def shortname
  		name.length > 25? name[0..25] + "..." : name
  	end

  	def average_rating
  		reviews.blank? ? 0 : reviews.average(:star).round(2)
  	end

end

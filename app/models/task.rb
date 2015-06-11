class Task < ActiveRecord::Base
  extend FriendlyId
	friendly_id :title, use: [:slugged, :finders]

  belongs_to :project

  validates :title, presence: true, length: { maximum: 50 }
  validates :video, presence: true
  validates :tag, presence: true
  validates :project, presence: true
end

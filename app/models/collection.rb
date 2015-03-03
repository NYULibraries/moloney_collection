class Collection < ActiveRecord::Base
  has_many :songs
  validates :title, :description, :presence => true

  extend FriendlyId
  friendly_id :title, use: :slugged
  has_attached_file :image, :default_url => "/system/collections/default_collection.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def slug_candidates
    [
      :title,
      [:title, :id]
    ]
  end

  def should_generate_new_friendly_id?
    new_record? || slug.blank?
  end
end

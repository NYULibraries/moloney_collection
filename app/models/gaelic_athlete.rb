class GaelicAthlete < ActiveRecord::Base
  has_many :songs
  validates :name, :biographical_note, :presence => true
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_attached_file :image, :styles => { :small => "150x150>" }, :default_url => "/system/gaelic_athletes/default_gaelic_athlete.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


  def slug_candidates
    [
      :name,
      [:name, :id]
    ]
  end

  def should_generate_new_friendly_id?
    new_record? || slug.blank?
  end

end

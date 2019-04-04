class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :collection
  validates :aiamm, :refid, :artist_id, :presence => true
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

    def slug_candidates
    [
      :aiamm,
      [:aiamm, :refid],
      [:aiamm, :refid, :artist_id],
      [:aiamm, :refid, :artist_id, :id],
    ]
  end

  def should_generate_new_friendly_id?
    new_record? || slug.blank?
  end
end

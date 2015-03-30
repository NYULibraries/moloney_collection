class FindingAid < ActiveRecord::Base
  has_many :series

  extend FriendlyId
  friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    new_record? || slug.blank?
  end
end

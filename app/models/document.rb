class Document < ActiveRecord::Base
  validates :title, :document_file_file_name,  :presence => true
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  has_attached_file :document_file, :styles => { :small => "150x150>" }, :default_url => "/system/documents/default_doc.jpg"
  validates_attachment_content_type :document_file, :content_type => /\Aimage\/.*\Z/

  def slug_candidates
    [
      :title,
      [:title, :identifier],
      [:title, :identifier, :id]
    ]
  end

  def should_generate_new_friendly_id?
    new_record? || slug.blank?
  end
end

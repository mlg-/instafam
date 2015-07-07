class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :family
  has_many :comments

  has_attached_file :display_photo,
                    :storage => :dropbox,
                    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
                    :styles => { :full => "500x500>", :thumb => "100x100>" }, 
                    :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :display_photo, :content_type => /\Aimage\/.*\Z/
end
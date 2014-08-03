class Listing < ActiveRecord::Base
	if Rails.env.development?
has_attached_file :image, :styles => { :medium => "300x", :thumb => "160x160" }, :default_url => "noimage.png"
else
has_attached_file :image, :styles => { :medium => "300x", :thumb => "160x160" }, :default_url => "noimage.png",:storage => :dropbox,
   			 :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
   			 :path => ":style/:id_:filename"
   	end

   	validates :name, :description, :price, presence: true
   	validates :price, numericality: { greater_than: 0}
   	validates_attachment_presence :image

   belongs_to :user
end
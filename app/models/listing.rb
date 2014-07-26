class Listing < ActiveRecord::Base
has_attached_file :image, :styles => { :medium => "200x", :thumb => "160x160!" }, :default_url => "noimage.png",:storage => :dropbox,
   			 :dropbox_credentials => Rails.root.join("config/dropbox.yml")
   			
end
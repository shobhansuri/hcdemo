class Listing < ActiveRecord::Base
has_attached_file :image, :styles => { :medium => "200x", :thumb => "160x160!" }, :default_url => "noimage.png"
end
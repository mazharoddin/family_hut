class Photo < ActiveRecord::Base

  belongs_to :album, :counter_cache => true
  has_attached_file :image, :styles => { :thumb => "128x128" },
                            :url  => "/assets/photos/:id/:style/:basename.:extension",
                            :path => ":rails_root/public/assets/photos/:id/:style/:basename.:extension"

end

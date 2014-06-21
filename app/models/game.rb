class Game < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "292x136>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/jpg', 'image/png']
end

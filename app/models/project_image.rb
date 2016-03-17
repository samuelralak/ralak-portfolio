class ProjectImage < ActiveRecord::Base
	belongs_to :project, inverse_of: :project_images
	
	has_attached_file :screenshot, styles: { large: "750x500", medium: "700x300>", thumb: "500x300>" }, 
		default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :screenshot, content_type: /\Aimage\/.*\Z/
end

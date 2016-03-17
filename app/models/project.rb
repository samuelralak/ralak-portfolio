class Project < ActiveRecord::Base
	has_many :project_images, inverse_of: :project, dependent: :destroy

	after_create :find_images

	private
		def find_images
			images = ProjectImage.where(unique_token: self.unique_token)
			unless images.empty?
				images.map { |i| i.update_attributes(project_id: self.id) }
			end
		end
end

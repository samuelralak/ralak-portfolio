class Project < ActiveRecord::Base
	has_many :project_images, inverse_of: :project, dependent: :destroy
end

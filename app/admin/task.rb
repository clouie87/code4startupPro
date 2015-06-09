ActiveAdmin.register Task do
	permit_params :title, :note, :video, :header, :tag, :project_id
end

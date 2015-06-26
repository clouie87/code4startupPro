ActiveAdmin.register Task do
	permit_params :title, :note, :video, :image, :header, :tag, :project_id, :live

	sortable tree:false,
			sorting_attribute: :tag

	index :as => :sortable do 
		label :title
		
		actions
	end

	index do 
		selectable_column
		column :header
		column :title
		column :tag
		column :project
		column :image
		column :live

		actions
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :project, label: "Project"
			f.input :title, label: "Title"
			f.input :note, label: "Note"
			f.input :video, label: "Video"
			f.input :image, hint: f.task.image? ? image_tag(task.image.url, height: '100') : content_tag(:span, 'Upload and image here')
			f.input :header, label: "Header"
			f.input :live, label: "Live"
		end
		f.actions
	end

end

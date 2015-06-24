ActiveAdmin.register Project do
	permit_params :name, :content, :date, :price, :language, :github, :tag, :image


	sortable tree:false,
			sorting_attribute: :tag

	index :as => :sortable do 
		label :name
		
		actions
	end

	index do
		selectable_column
			column :name
			column :content
			column :date
			column :price
			column :language
			column :github
			column :tag
		
			actions
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :name
			f.input :content
			f.input :date
			f.input :price
			f.input :language
			f.input :github
			f.input :tag
			f.input :image, hint: f.project.image? ? image_tag(project.image.url, height: '100') : content_tag(:span, 'Upload and image here')
		end
		f.actions
	end

end

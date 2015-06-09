ActiveAdmin.register Project do
	permit_params :name, :content, :price
end

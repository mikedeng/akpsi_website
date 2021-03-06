# Career entry settings in activeadmin

ActiveAdmin.register CareerEntry do
  permit_params :name, :company, :group, :year, :location, :fulltime_or_intern, :job_category

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  
  index do
    id_column
    column :name
    column :company
    column :job_category
    column :group
    column :location
    column :year
    column "Full-time/Internship", :fulltime_or_intern
    column "Active Id", :active_id
    actions
  end

  form do |f|
    f.inputs "Career information" do
      f.input :name
      f.input :company
      f.input :job_category, as: :select, collection: ["Investment Banking", "Consulting", "Finance", "Technology", "Technical", "Other"]
      f.input :group
      f.input :location
      f.input :year
      f.input :fulltime_or_intern, :label => "Full-time/Internship", as: :select, collection: ["Full-time", "Internship"]
    end

    f.actions
  end

end

ActiveAdmin.register Syllabus do
  permit_params :course_name, :duration, :database, :course_id
  filter :course, as: :select, collection: Course.all.map { |c| [c.course_name, c.id] }, prompt: 'Select Course'

  index do
    selectable_column
    id_column
    column :course_name
    column :database 
    column :description
    # column :course do |obj|
    #   obj.course.course_name
    # end
    
    actions
  end

  form do |f|
    f.inputs do
      f.input :course_id, as: :select, collection: Course.all.map { |c| [c.course_name, c.id] }, prompt: 'Select Course'
      f.input :database
      f.input :description   
    end
    f.actions
  end

  show do
    attributes_table do
      row :course_name
      row :description
      row :database, href: admin_syllabus_path(resource)

    end
  end

  controller do
    def scoped_collection
      end_of_association_chain.includes(:course)
    end

    def create
      super do |format|
        redirect_to collection_path and return if resource.valid?
      end
    end

    def update
      super do |format|
        redirect_to collection_path and return if resource.valid?
      end
    end
  end
end
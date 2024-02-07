ActiveAdmin.register Syllabus do
  permit_params :course_name, :duration, :database, :course_id
  filter :course, as: :select, collection: Course.all.map { |c| [c.course_name, c.id] }, prompt: 'Select Course'

  index do
    selectable_column
    id_column
    column :course_name
    column :duration 
    column :database
    # column :course do |obj|
    #   obj.course.course_name
    # end
    # actions
  end

  form do |f|
    f.inputs do
      f.input :course_name
      f.input :duration
      f.input :database
      f.input :course_id, as: :select, collection: Course.all.map { |c| [c.course_name, c.id] }, prompt: 'Select Course'
    end
    f.actions
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
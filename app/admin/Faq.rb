# ActiveAdmin.register Faq do
#   permit_params :title, :content

#   index do
#     selectable_column
#     id_column
#     column :title
#     column :created_at
#     actions
#   end

#   form do |f|
#     f.inputs 'FAQ Details' do
#       f.input :title
#       f.input :content, as: :text
#     end
#     f.actions
#   end

#   show do
#     attributes_table do
#       row :title
#       row :content
#       row :created_at
#       row :updated_at
#     end
#   end
# end

ActiveAdmin.register New do


  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "News", :multipart => true do
      f.input :title
      f.input :news_content
      f.input :external_link
      f.input :photo, :as => :file, :hint => f.object.photo.nil? ? f.template.content_t(:span, "no photo yet"): f.template.image_tag(f.object.photo.url(:medium))
    end
    f.actions
  end
  controller do
    def permitted_params
      params.permit new: [:title, :news_content, :external_link, :photo ]
    end
  end
  
end
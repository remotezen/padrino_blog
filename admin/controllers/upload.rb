Blog::Admin.controllers :upload do
  @title = "Upload"
  get :index do
    @title = "upload"
    render 'upload/index'
  end
end

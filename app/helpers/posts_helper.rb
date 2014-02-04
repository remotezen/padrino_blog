# Helper methods defined here can be accessed in any controller or view in the application

Blog::App.helpers do
  def gravatar_for( user, options = { })
    options[ :size] ||="30x30"
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}.png"
    image_tag(gravatar_url, alt: user.name, class: "gravatar", size: options[:size])
  end
end
  # def simple_helper_method
  #  ...
  # end

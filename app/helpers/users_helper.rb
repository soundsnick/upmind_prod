module UsersHelper

  def avatar
    current_user.avatar.url ? current_user.avatar.url : image_path("noavatar.jpg")
  end
end

module UsersHelper

  def avatar(user = nil)
    current_user.avatar.url ? current_user.avatar.url : image_path("noavatar.jpg")
    if user
      user.avatar.url ? user.avatar.url : image_path("noavatar.jpg")
    end
  end
end

module UserImageHelper
  def user_image(user)
    image = user.sns_profile_image || user.user_image.url
    image_tag(image, alt: user.username + 'アイコン', class: 'profile-img')
  end

  def has_user_image?
    current_user.user_image.url != '/user_images/default.jpg' || current_user.sns_profile_image
  end
end

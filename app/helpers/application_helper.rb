module ApplicationHelper

  def full_title(page_title = '')
    base_title = "Juanca App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def img_or_gravatar(user, size = '50')
    size = size.to_s
    if user.picture.blank?
      link_to gravatar_for(user, size: size), user
    else
      link_to image_tag(user.picture, size: size, class: 'perfil'), user
    end
  end

end

module UsersHelper
  def avatar_for(user)
    case user.user_type
      when "local" then gravatar_for(user, 150)
      when "weibo" then weibo_avatar_for(user)
      when "github" then github_avatar_for(user)
    end
  end


  def gravatar_for(user, size)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}&default=identicon"
    image_tag(gravatar_url, alt: user.name, class: 'avatar')
  end

  def weibo_avatar_for(user)
    image_tag(user.weibo_avatar_large, alt:user.name, class: "avatar")
  end

  def github_avatar_for(user)
    image_tag(user.github_avatar, alt:user.name, class: "avatar")
  end
end

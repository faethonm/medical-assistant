module ApplicationHelper

  def full_title(page_title = '')
    base_title = 'MedAssist'
    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end

  def avatar_url(person)
    if person.avatar_url.present?
      person.avatar_url
    else
      gravatar_id = Digest::MD5.hexdigest(person.email.downcase)
      gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}.png?d=mm"
    end
  end

end

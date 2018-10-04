module ApplicationHelper

  def latest_work
    "<p>Helping!</p>".html_safe
  end

  def user_login_helper
    if current_user.is_a?(User)
      link_to "Logout", destroy_user_session_path, method: :delete
    else
      (link_to "Login", new_user_session_path) +
      (link_to "Register", new_user_registration_path)
    end
  end

  def blog_admin
    # if current_user.is_a?(User)
    #   link_to "This post is #{@blog.status}", toggle_visibility_blog_path(blog)
    #   link_to 'Edit', edit_blog_path(blog)
    #   link_to 'Delete', blog, method: :delete, data: { confirm: 'Are you sure?' }
    # end
  end

  def blog_snippets
    content_tag(:p, "test content", class: "homepage")
  end

  def traffic_source
    if session[:traffic_source]
      content_tag(:p, "Thanks for visiting me from #{session[:traffic_source]}", class: "source-greeting")
    else
      content_tag(:p, "Don't know where I'm going, and I don't know why-y-y", class: "source-greeting")
    end
  end
end

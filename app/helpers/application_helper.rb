module ApplicationHelper
  def login_helper
    if current_user.is_a?(GuestUser) 
      (link_to "Register", new_user_registration_path) + 
      "<br>".html_safe +
      (link_to "Login", new_user_session_path)
    else 
      button_to "Logout", destroy_user_session_path, method: :delete, class: 'btn btn-danger btn-sm'
    end 
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting us from #{session[:source]} and you are on the #{layout_name} layout"
      content_tag(:p, greeting, class: "greeting")
    end
  end
end

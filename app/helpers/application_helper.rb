module ApplicationHelper
  def member?(sign)
    output = ''
     if sign == true
      output << link_to('Logout', destroy_user_session_path, method: :delete)
     else 
      output << link_to('Sign In', new_user_session_path) + ' '
      output << link_to('Sign Up', new_user_registration_path)
     end 
     output.html_safe
  end
end

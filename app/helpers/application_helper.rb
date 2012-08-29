module ApplicationHelper

  def is_admin?
  	if current_user && current_user.admin?
  	  return true
  	else
  	  return false
  	end
  end

end

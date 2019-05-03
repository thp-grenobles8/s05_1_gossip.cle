module SessionsHelper
  def current_user
    User.find_by(id: session[:user_id])
  end

  def log_in(user)
    session[:user_id] = user.id
  end

  def logged_in?
    true unless session[:user_id].nil?
  end

  def is_owner?(gossip)
    true if gossip.user == current_user
  end
end
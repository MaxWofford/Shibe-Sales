class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #Sanity checking that 1 + 2 = 3
  $cake = 1
  $pie = 2
  $spy = $cake + $pie
end
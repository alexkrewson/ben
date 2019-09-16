class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "Ben's 3D Printer Monitor"
  end
  
end

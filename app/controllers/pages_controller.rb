class PagesController < ActionController::Base
  protect_from_forgery
  layout 'application'
  respond_to :js

  def index
  end
  
  def newindex
  end

  def projects
  end

  def painting
  end

  def about
  end

end

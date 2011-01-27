class PagesController < ApplicationController
  def home
    @title = "tivity Home"
  end

  def activities
    @title = "tivity Activities"
  end

  def myteam
    @title = "My Team"
  end

  def signout
     @title = "sign out tivity"
  end

  def myaccount
     @title = "tivity My Account"
  end

end

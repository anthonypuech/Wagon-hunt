class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @today = Date.today
  end
  def team
    @members =["Anto","Greg","Phil"]

  end
end

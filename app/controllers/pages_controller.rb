class PagesController < ApplicationController
  def home
    @today = Date.today
  end
  def team
    @members =["Anto","Greg","Phil"]

  end
end

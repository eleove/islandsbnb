class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    render :home, layout: false
  end
end

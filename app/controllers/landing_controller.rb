class LandingController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def index
    @articles = Article.all
  end
end

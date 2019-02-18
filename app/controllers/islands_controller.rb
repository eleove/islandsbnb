class IslandsController < ApplicationController
  def index
    @islands = Island.all

  end

  def new
  end

  def create
  end
end

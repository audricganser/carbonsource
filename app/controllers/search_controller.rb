class SearchController < ApplicationController

  def index
    redirect_to '/search/new'
  end

  def new
    @search = Search.new
  end

  def create
  end

  def show
  end

  def list
  end
end

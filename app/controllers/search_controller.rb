class SearchController < ApplicationController

  def new
    @organisation = Organisation.new
    @search = Search.new
  end

  def create
  end

  def show
  end

  def list
  end
end

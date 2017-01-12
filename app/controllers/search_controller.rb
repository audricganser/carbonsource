require 'date'

class SearchController < ApplicationController

  def new
    @organisation = Organisation.new
    @search = Search.new
  end

  def create
    @search = Search.new
    @search.query = params['search']['query']
    # TODO: Implement search algorithm here, to process the query into a unique politician ID to pass through. (MC)
    redirect_to :controller => 'search', :action => 'show', :id => 0
  end

  def show
  end

  def list
  end
end

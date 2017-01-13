require 'date'

class SearchController < ApplicationController

  def new
    @organisation = Organisation.new
    @search = Search.new
  end

  def create
    # TODO: Implement search algorithm here, to process the query into a unique politician ID to pass through. (MC)
    @search = Search.new
    @search.query = params['search']['query']
    @politician = Politician.find_by name_last: @search.query
    # IDEA: generate a difference coefficient based on the letters making up the names. First/ last combos with overall closest matches are displayed.
    redirect_to :controller => 'search', :action => 'list', :politician => @politician
  end

  def show
  end

  def list
  end
end

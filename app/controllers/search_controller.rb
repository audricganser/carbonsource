class SearchController < ApplicationController

  def new
    @organisation = Organisation.new
    @search = Search.new
  end

  def create
    puts "This runs"
    puts params['search']['query'].inspect
    puts "This runs too"
  end

  def show
  end

  def list
  end
end

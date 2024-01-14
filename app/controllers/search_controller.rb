class SearchController < ApplicationController
  before_action :search_terms

  private

  def search_terms
    @search = params[:search]
    @results = Prompt.search(@search, fields: [:prompt], limit: 10)
  end
end

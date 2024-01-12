class SearchController < ApplicationController
  before_action :search_terms

  def search
    render partial: "results"
  end

  private

  def search_terms
    @search_term = params[:q]
    @results = Prompt.search(@search_term, fields: [:prompt], limit: 10)
  end
end

class SearchController < ApplicationController
  def index
    @search_term = params[:q]
    @results = Prompt.search(@search_term, fields: [:prompt], limit: 10)
  end

  def search
    @search_term = params[:q]
    @results = Prompt.search(@search_term, fields: [:prompt], limit: 10)

    render partial: "results"
  end
end

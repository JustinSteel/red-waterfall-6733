class SearchController < ApplicationController
  def index
    @members = SearchFacade.members_by_nation(params[:nation]).take(25)
    @count = SearchFacade.count_all_members
  end
end
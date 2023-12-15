class SearchController < ApplicationController
  def index
    @members = SearchFacade.members_by_nation(params[:nation]).take(25)
    @all_members = SearchFacade.all_members
  end
end
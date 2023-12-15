class Member
  attr_reader :_id,
              :allies,
              :enemies,
              :affiliation,
              :name,
              :photo_url

  def initialize(search_params)
    @_id = search_params[:_id]
    @allies = search_params[:allies].join(", ")
    @enemies = search_params[:enemies].join(", ")
    @affiliation = search_params[:affiliation]
    @name = search_params[:name]
    @photo_url = search_params[:photoUrl]
  end
end
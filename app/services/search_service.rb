class SearchService
  
  def self.members_by_nation(nation)
    get_url("/api/v1/characters?affiliation=#{nation}")
  end

  def self.photo_url(member)
    get_url("/api/v1/characters/#{member[:_id]}")[0][:photoUrl]
  end

  def self.all_members
    get_url("/api/v1/characters")
  end

  private
  
  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end
end
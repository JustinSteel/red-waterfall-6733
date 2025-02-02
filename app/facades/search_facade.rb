class SearchFacade
  def self.members_by_nation(nation)
    members = SearchService.members_by_nation(nation)
    members.map do |member|
      Member.new(member)
    end
  end

  def self.all_members
    members = SearchService.all_members
    members.map do |member|
      Member.new(member)
    end
  end

  def self.count_all_members
    members = SearchService.all_members
    members.count
  end

  def self.photo_url(member)
    SearchService.photo_url(member)
  end
end
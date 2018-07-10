class Song < ActiveRecord::Base
  belongs_to :artist
  validate :is_title_case

  before_validation :make_title_case

  def artist_name
    self.artist.name
  end

  private


  def is_title_case
    if tiitle.split.any?{|w|w[0].upcase != w[0]}
      errors.add(:name, "Title must be in title case")
    end
  end
end

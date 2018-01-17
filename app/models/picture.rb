class Picture < ApplicationRecord

  validates :artist, presence: true
  validates :title, length: { in: 3..20 }
  validates :url, presence: true
  validates :url, uniqueness: true



  def self.month
    Picture.where("created_at < ?", 1.month.ago)
  end

  def self.all_years_array
  years = []
  Picture.all.each do |picture|
    years << picture.created_at.year
  end
  years.uniq.sort.reverse
end

def self.pictures_by_year(year)
  pictures = []
  Picture.all.each do |picture|
    if picture.created_at.year == year
      pictures << picture
    end
  end
  pictures
end

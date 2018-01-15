class Picture < ApplicationRecord

  validates :artist, presence: true
  validates :title, length: { in: 3..20 }=
  validates :url, presence: true
  validates :url, uniqueness: true



  def self.month
    Picture.where("created_at < ?", 1.month.ago)
  end

  def self.year
    Picture.where('extract(year  from created_at) = ?', desired_year)
  end

end

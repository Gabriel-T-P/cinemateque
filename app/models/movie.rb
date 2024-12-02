class Movie < ApplicationRecord
  validates :title, :year, :director, :plot, presence: true
  validates :year, numericality: { greater_than_or_equal_to: 1878 }

  has_many :papers
  has_many :actors, through: :papers
end

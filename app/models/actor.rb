class Actor < ApplicationRecord
  validates :name, :birth_date, :nationality, presence: true

  has_many :papers
  has_many :movies, through: :papers
end

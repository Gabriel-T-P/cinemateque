class Actor < ApplicationRecord
  validates :name, :birth_date, :nationality, presence: true
end

class Charity < ApplicationRecord
  has_many :donations
  # has_many :user, through: :donations
end

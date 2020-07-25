class Review < ApplicationRecord
  belongs_to :vendor
  belongs_to :user
  SET_CONTENT = [
    "Amazing place",
    "I would go back again",
    "I definitely recommend",
    "Best service!"
  ]
end

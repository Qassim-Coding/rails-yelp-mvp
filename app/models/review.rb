class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, inclusion: { in: (0..5), allow_nill: false }, numericality: {only_integer: true}
  # un restau a des avis,         entre 0 et 5                      que des entiers, sans virgule
  validates :content, presence: true
  # un restau a un contenu
end

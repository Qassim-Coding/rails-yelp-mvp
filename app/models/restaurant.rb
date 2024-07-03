class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # un restau a plusieurs reviews  | si on detruit un restau, toutes les reviews liées disparaissent aussi
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"]}
  # dans catégorie On inclut 4 types de restau.
end

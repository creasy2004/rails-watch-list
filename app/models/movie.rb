# app/models/movie.rb

class Movie < ApplicationRecord
  # Validation: Le titre doit être unique et ne peut pas être vide
  validates :title, presence: true, uniqueness: true

  # Validation: L'aperçu (overview) ne peut pas être vide
  validates :overview, presence: true

  # Association: Un film peut avoir plusieurs signets
  has_many :bookmarks
  # Vous pouvez également ajouter d'autres validations ou associations selon vos besoins
end

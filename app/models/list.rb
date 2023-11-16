# class List < ApplicationRecord
#   has_many :bookmarks
#   has_many :movies, through: :bookmarks
#   # app/models/list.rb
#   # Validation: Le nom ne doit pas être vide
#   validates :name, presence: true

#   # Validation: Le nom doit être unique
#   validates :name, uniqueness: true

#   # Association: Une liste peut avoir plusieurs signets
#   has_many :bookmarks, dependent: :destroy

#   # Vous pouvez également ajouter d'autres validations ou associations selon vos besoins
# end
# app/models/list.rb

class List < ApplicationRecord
  # Validation: Le nom ne doit pas être vide
  validates :name, presence: true

  # Validation: Le nom doit être unique
  validates :name, uniqueness: true

  # Association: Une liste peut avoir plusieurs signets
  has_many :bookmarks, dependent: :destroy

  # Association: Une liste peut avoir plusieurs films à travers les signets
  has_many :movies, through: :bookmarks

  # Vous pouvez également ajouter d'autres validations ou associations selon vos besoins
end

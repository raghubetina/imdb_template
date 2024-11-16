class Role < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :character_name, :presence => true

  validates :movie_id, :presence => true

  # Scopes

  def to_s
    character_name
  end

end

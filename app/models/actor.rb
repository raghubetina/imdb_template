class Actor < ApplicationRecord
  # Direct associations

  has_many   :roles,
             :dependent => :destroy

  # Indirect associations

  has_many   :filmography,
             :through => :roles,
             :source => :movie

  has_many   :directors,
             :through => :filmography,
             :source => :director

  # Validations

  validates :name, :presence => true

  # Scopes

  def to_s
    name
  end

end

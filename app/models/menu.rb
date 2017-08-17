class Menu < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             :dependent => :destroy

  belongs_to :restaurant

  # Indirect associations

  # Validations

end

class GroupOrder < ApplicationRecord
  # Direct associations

  belongs_to :restaurant,
             :counter_cache => true

  # Indirect associations

  # Validations

end

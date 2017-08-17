class Dish < ApplicationRecord
  # Direct associations

  belongs_to :menu,
             :counter_cache => true

  # Indirect associations

  # Validations

end

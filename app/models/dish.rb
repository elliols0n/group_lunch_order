class Dish < ApplicationRecord
  # Direct associations

  has_many   :orders,
             :dependent => :destroy

  belongs_to :menu,
             :counter_cache => true

  # Indirect associations

  # Validations

end

class GroupOrder < ApplicationRecord
  # Direct associations

  has_many   :orders,
             :dependent => :destroy

  belongs_to :restaurant,
             :counter_cache => true

  # Indirect associations

  # Validations

end

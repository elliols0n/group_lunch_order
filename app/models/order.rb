class Order < ApplicationRecord
  # Direct associations

  belongs_to :group_order,
             :counter_cache => true

  belongs_to :dish,
             :counter_cache => true

  belongs_to :restaurant,
             :counter_cache => true

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end

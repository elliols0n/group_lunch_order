class Order < ApplicationRecord
  # Direct associations

  belongs_to :dish,
             :counter_cache => true

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end

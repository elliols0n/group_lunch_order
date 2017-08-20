class Restaurant < ApplicationRecord
  # Direct associations

  belongs_to :cuisine,
             :counter_cache => true

  has_many   :orders,
             :dependent => :destroy

  has_many   :group_orders,
             :dependent => :destroy

  has_one    :menu,
             :dependent => :destroy

  # Indirect associations

  # Validations

end

class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :group_orders,
             :dependent => :destroy

  has_one    :menu,
             :dependent => :destroy

  # Indirect associations

  # Validations

end

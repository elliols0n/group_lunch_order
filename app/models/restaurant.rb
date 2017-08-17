class Restaurant < ApplicationRecord
  # Direct associations

  has_one    :menu,
             :dependent => :destroy

  # Indirect associations

  # Validations

end

class GroupOrder < ApplicationRecord
  mount_uploader :receipt, ReceiptUploader

  # Direct associations

  has_many   :orders,
             :dependent => :destroy

  belongs_to :restaurant,
             :counter_cache => true

  # Indirect associations

  # Validations

end

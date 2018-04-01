class Item < ApplicationRecord
  # model associaiton
  belongs_to :todo

  # validation
  validates_presence_of :name
end

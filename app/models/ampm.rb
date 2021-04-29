class Ampm < ActiveHash::Base
  self.data = [
    { id: 0, name: 'am' },
    { id: 1, name: 'pm' },
  ]
  include ActiveHash::Associations
  has_many :orders
end
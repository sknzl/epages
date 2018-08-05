class Shop < ApplicationRecord
  validates :name, presence: :true
  validates :host, url: true
  validates :host, presence: :true
end

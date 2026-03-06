class Order < ApplicationRecord
  has_one :payment
  has_one :benefit
end

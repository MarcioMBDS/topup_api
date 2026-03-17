class OrderSerializer < ActiveModel::Serializer
  attributes :external_id, :status, :created_at

  has_one :payment
  has_one :benefit
end

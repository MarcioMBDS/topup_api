class OrderSerializer < ActiveModel::Serializer
  attributes :id, :status, :created_at

  has_one :payment
  has_one :benefit

  def id
    object.external_id
  end
end

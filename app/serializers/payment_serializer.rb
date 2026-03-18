class PaymentSerializer < ActiveModel::Serializer
  attributes :id, :amount_in_cents, :payment_type, :status

  def id
    object.external_id
  end
end

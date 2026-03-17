class PaymentSerializer < ActiveModel::Serializer
  attributes :external_id, :amount_in_cents, :payment_type, :status
end

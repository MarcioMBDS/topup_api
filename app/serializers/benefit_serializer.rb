class BenefitSerializer < ActiveModel::Serializer
  attributes :external_id, :recipient, :product_name, :product_amount, :status
end

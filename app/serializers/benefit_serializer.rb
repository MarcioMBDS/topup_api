class BenefitSerializer < ActiveModel::Serializer
  attributes :id, :recipient, :product_name, :product_amount, :status

  def id
    object.external_id
  end
end

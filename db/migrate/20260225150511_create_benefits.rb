class CreateBenefits < ActiveRecord::Migration[8.1]
  def change
    create_table :benefits do |t|
      t.string :external_id
      t.string :provider_reference
      t.string :recipient
      t.string :customer_id
      t.string :product_id
      t.datetime :customer_activated_at
      t.integer :product_amount
      t.string :product_name
      t.string :product_unit
      t.string :status
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreatePayments < ActiveRecord::Migration[8.1]
  def change
    create_table :payments do |t|
      t.string :external_id
      t.string :payment_type
      t.string :wallet
      t.string :status
      t.integer :amount_in_cents
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end

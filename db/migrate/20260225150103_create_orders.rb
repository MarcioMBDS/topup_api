class CreateOrders < ActiveRecord::Migration[8.1]
  def change
    create_table :orders do |t|
      t.string :external_id
      t.string :status

      t.timestamps
    end
  end
end

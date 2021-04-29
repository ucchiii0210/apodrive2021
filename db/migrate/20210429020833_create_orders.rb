class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|

      t.integer :order_number  ,null: false
      t.string  :name          ,null: false
      t.string  :tel           ,null: false
      t.string  :postal        ,null: false
      t.string  :address       ,null: false
      t.string  :product       ,null: false
      t.date    :delivery_date
      t.integer :driver_id
      t.text    :text
      t.string  :apointer
      t.integer :ampm_id
      
      t.timestamps
    end
  end
end

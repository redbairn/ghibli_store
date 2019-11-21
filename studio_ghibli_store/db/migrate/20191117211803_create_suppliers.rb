class CreateSuppliers < ActiveRecord::Migration[5.0]
  def up
    create_table :suppliers do |t|
      t.string "supplier_name", :limit => 50
      t.string "addressLine1", :limit => 50
      t.string "addressLine2", :limit => 50
      t.string "addressLine3", :limit => 50
      t.bigint "phone_number", :limit => 15
      t.string "email", :default => '', :null => false
      t.integer "is_deleted", :limit => 2
      t.timestamps
    end
  end
  
  def down
    drop_table :suppliers
  end
end

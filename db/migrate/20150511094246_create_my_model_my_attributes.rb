class CreateMyModelMyAttributes < ActiveRecord::Migration
  def change
    create_table :my_model_my_attributes do |t|
      t.references :my_model
      t.references :my_attribute
      t.string  :value, limit: 500
      t.integer :value_int
      t.datetime :value_date
      t.float :value_float
      t.integer :created_by
      t.datetime :created_at, null: false
      t.integer :updated_by
      t.datetime :updated_at, null: false
    end
  end
end

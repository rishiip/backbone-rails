class CreateMyAttributes < ActiveRecord::Migration
  def change
    create_table :my_attributes do |t|
      t.string :name, null: false, limit: 250
      t.string :section_name, null: false, limit: 250
      t.string :attribute_type, limit: 50
      t.string :default_value, limit: 500
      t.string :is_required, null: false, limit: 1, default: 'N'
      t.string :data_type, limit: 20
      t.string :description, limit: 300
      t.string :display_type, limit: 25
      t.string :display_size, limit: 25
      t.string :display_label, limit: 250
      t.integer :display_seq
      t.integer :active_flag, null: false, default: 1
      t.integer :created_by
      t.datetime :created_at, null: false
      t.integer :updated_by
      t.datetime :updated_at, null: false
    end
  end
end

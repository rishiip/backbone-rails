class CreateMyModels < ActiveRecord::Migration
  def change
    create_table :my_models do |t|
      t.string :model_number, null: false, index: true, unique: true
      t.string :description, null: false
      t.integer :active_flag, null: false, default: 1
      t.integer :created_by
      t.datetime :created_at, null: false
      t.integer :updated_by
      t.datetime :updated_at, null: false
    end
  end
end

class CreateMreports < ActiveRecord::Migration[6.1]
  def change
    create_table :mreports do |t|
      t.references :user, null: false, foreign_key: true
      t.references :material, null: false, foreign_key: true
      t.integer :material_confidece

      t.timestamps
    end
  end
end

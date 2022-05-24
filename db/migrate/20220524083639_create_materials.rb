class CreateMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :materials do |t|
      t.string :title
      t.string :content
      t.string :category
      t.string :sub_category

      t.timestamps
    end
  end
end

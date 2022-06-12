class CreateFreports < ActiveRecord::Migration[6.1]
  def change
    create_table :freports do |t|
      t.references :user, null: false, foreign_key: true
      t.references :flashcards, null: false, foreign_key: true
      t.boolean :is_known

      t.timestamps
    end
  end
end

class CreateFlashcards < ActiveRecord::Migration[6.1]
  def change
    create_table :flashcards do |t|
      t.string :question
      t.string :answer
      t.string :category

      t.timestamps
    end
  end
end

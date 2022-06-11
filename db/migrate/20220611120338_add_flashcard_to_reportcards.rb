class AddFlashcardToReportcards < ActiveRecord::Migration[6.1]
  def change
    add_reference :flashcards, :reportcard, foreign_key: true
  end
end

class CreateQuizTranslations < ActiveRecord::Migration[6.0]
  def change
    create_table :quiz_translations do |t|
      t.belongs_to :quiz, null: false, foreign_key: true
      t.belongs_to :translation, null: false, foreign_key: true

      t.timestamps
    end
  end
end

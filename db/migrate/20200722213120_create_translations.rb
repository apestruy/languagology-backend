class CreateTranslations < ActiveRecord::Migration[6.0]
  def change
    create_table :translations do |t|
      t.string :input
      t.string :output
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end

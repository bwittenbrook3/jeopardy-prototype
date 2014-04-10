class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :desc
      t.string :answer

      t.timestamps
    end
  end
end
